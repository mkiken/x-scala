var util = require('util');
var fs = require('fs');
const DEBUG = false;
const NULL = "#\\nul";
var ast = {};
var bTemplate = false;

//変数定義を格納するための変数
var blockLevel = 0;
var varDefines = [];

//関数定義と型エイリアスを格納する
var funcLevel = 0;
var funcDefines = [];

//lambdaに入れる変数名を格納するための変数
var lambdaLevel = 0;
var bSave = false;
var varNames = [];

//予約語のリスト．
//ここに載っているものはHygienic変換を行わない
const reservedWords = [
'main',
    'Int',
    'Array',
    'String',
    'Unit',
    'args',
    'Double'
    ];
    function isReserved(e) {
	    var idx = reservedWords.indexOf(e);
	    return idx == -1? false : true;
    }

function convertName(e){
	var name = e;
	//ラムダに足す場合は接頭辞がA-になっている
	if(name.length > 2 && name[0] == 'A' && name[1] == '-'){
		name = name.splice(2);
		if(bSave) varNames[lambdaLevel].push(name);
	}

	if(isReserved(name)){
		name = "R-" + name + "-";
	}
	else name = "V-" + name;
	return name;
}

fs.readFileSync(__dirname + '/ast.spec', 'utf8').split('\n').forEach(function (line) {
    var spec = line.split(': ');
    if (spec.length === 1) return;
    var type = spec[0], keys = spec[1].split(', ');
    keys.splice(0, 0, 'type');
    ast[type] = keys;
});


function sx_string(s) { return '"' + s + '"'; }

var literal_table = [], literal_id = 0;
function literal(l) {
    literal_table.push(l);
    literal_id++;
    return sx_string(l);
}

function encloses(){
	var ls = [];
	for(var i = 1; i < arguments.length; i++){
		ls.push(arguments[i]);
	}
	return enclose(arguments[0], ls);
}

function enclose(tag, l) {
    if(arguments.length != 2) throw new Error("enclose: too many arguments => " + arguments.length);
    return [tag].concat(l);
}

function ScalaTag(name, elements){
	var exprs = [sx_string("Scala"), sx_string(name)];
	for(var i = 0; i < elements.length; i++){
		exprs.push(elements[i]);
	}
	return exprs;
}

//ブロック内の変数宣言を全てブロック文に変換する
function decl2Block(stats, pos){
    var res = [];
    for(var i = pos; i < stats.length; i++){
        var e = stats[i];
        if(e.type == 'BlockStat'){
            //変数宣言の場合
            if(e.def.type == 'PatValDef' || e.def.type == 'PatVarDef'){
                blockLevel++;
  			    //定義を初期化
  			    varDefines[blockLevel] = [];
  			    var sts = ax(e);
  			    if(varDefines[blockLevel].length == 0){
  				    //空だとnullになってしまうので，消えないようにしておく
  				    varDefines[blockLevel].push({notDelete:true});
  			    }
  			    blockLevel--;
                // var contents = encloses('letrec*', varDefines[blockLevel + 1], sts, decl2Block(stats, i+1));
  			    var contents = encloses('letrec*', varDefines[blockLevel + 1], sts).concat(decl2Block(stats, i+1));
  			    var result = ScalaTag("BlockExpression", [contents]);
  			    res.push(result);
  			    //それ以降の要素は既に処理がすんでいるはずなのでやらない
  			    break;
            }
            //関数定義，型エイリアス
            else{
                ax(e);
            }
        }
        else{
            res.push(ax(e));
        }
    }
    return res;
}

function ax(t) {
	if(t === null || t === "") return null;
	else if (!t) throw (new Error('Invalid AST node: ' + JSON.stringify(t) ));
    else if (typeof(t) === 'string') return sx_string(t);
    else if (Array.isArray(t)){
  	    return t.map(ax);
    }

    var spec = ast[t.type];

    switch (t.type) {
  	    //いまのところAnonymousFunction, Bindingなどを隠すと非Hygienic展開になる
  	    //Anonymousは左辺が_でもやばいし、おそらくidのときもやばい。応急処置
  	    case 'AnonymousFunction':
            // if(bTemplate){
  			//α変換の影響が出ないように、左辺の変数名と型を分離して、lambdaのbodyにいれておく
  			var params = [], types = [];
  			//引数が存在すれば
  			if(t.left.bindings){
  				var bds = t.left.bindings;
				for(var i = 0; i < bds.length - 1; i++){
  					params.push(bds[i].id);
  					types.push(bds[i].tp);
  				}

  				if(bds[bds.length-1].type == 'Ellipsis'){
					params.push(bds[bds.length-1]);
  					if(bds[bds.length-2].tp != null) types.push(bds[bds.length-1]);
  				}
  				else if(bds[bds.length-1].type == 'Binding'){
					params.push(bds[bds.length-1].id);
  					types.push(bds[bds.length-1].tp);
  				}
  				else if(bds[bds.length-1].type == 'BindingAny'){
					params.push({type: "Variable", name:"-WILDCARD-"});
  					types.push(bds[bds.length-1].tp);
  				}
  				else{
  					throw new Error("ax . AnonymousFunction:unintended case. => " + bds[bds.length-1].type);
  				}
				return ScalaTag(t.type, [encloses('lambda', ax(params), ax(types), ax(t.right))]);
  			}
  			else{ //引数がなかったら
				return ScalaTag(t.type, [encloses('lambda', [{notDelete:true}], [null], ax(t.right))]);
  			}
  	    case 'AnonymousFunctionId':
 	 		return ScalaTag(t.type, [encloses('lambda', [ax(t.left)], ax(t.right))]);
  	    case 'Bindings': return t.bindings? t.bindings.map(ax) : null;
  	    case 'Block':
  						 var res, sts, result;
                           // blockLevel++;
                           funcLevel++;
  						 //定義を初期化
                           // varDefines[blockLevel] = [];
                           funcDefines[funcLevel] = [];
  						 sts = decl2Block(t.states, 0);
  						 res = ax(t.res);
                           // if(varDefines[blockLevel].length == 0){
                               // //空だとnullになってしまうので，消えないようにしておく
                               // varDefines[blockLevel].push({notDelete:true});
                           // }
                           if(funcDefines[funcLevel].length == 0){
                               //空だとnullになってしまうので，消えないようにしておく
                               funcDefines[funcLevel].push({notDelete:true});
                           }
                           // result = encloses('letrec*', varDefines[blockLevel], sts, res);
                           // result = encloses('letrec*', varDefines[blockLevel]).concat(sts);
                           result = encloses('letrec*', funcDefines[funcLevel]).concat(sts);
                           // result = encloses('letrec* () ').concat(sts);
  						 result.push(res);
                           // blockLevel--;
                           funcLevel--;
                         return ScalaTag("Block", [result]);
  	    case 'Bracket':
  	    case 'Brace':
  	    case 'Paren':
  						 //elementsが空の時でもnulにしない
  						 if(t.elements.length == 0) return ScalaTag(t.type, {notDelete:true});
						 else return ScalaTag(t.type, ax(t.elements));
  	    case 'RepBlock':
  						 return ax(t.elements);


  	    case 'TemplateBody':
  						 var selftype, sts, result;
  						 blockLevel++;
  						 funcLevel++;
  						 //定義を初期化
  						 varDefines[blockLevel] = [];
  						 funcDefines[funcLevel] = [];
  						 selftype = ax(t.selftype);
  						 sts = ax(t.states);
  						 if(varDefines[blockLevel].length == 0 && funcDefines[funcLevel].length == 0){
  							 //空だとnullになってしまうので，消えないようにしておく
  							 varDefines[blockLevel].push({notDelete:true});
  						 }
  						 result = encloses('letrec*', varDefines[blockLevel].concat(funcDefines[funcLevel]), selftype, sts);
  						 blockLevel--;
  						 funcLevel--;
  						 return ScalaTag("TemplateBody", [result]);
  	    case 'TemplateStatement':
  						 //後付けだけど・・・
  						 //ラムダの情報を補完する
  						 var annotation = ax(t.annotation), modifier = ax(t.modifier), def = ax(t.definition);
  						 if(def !== null && typeof def.type !== 'undefined'){
  							 if(def.type === "PatValDefInfo"
  									 || def.type === "PatVarDefInfo"
  									 || def.type === "ValDclInfo"
  									 || def.type === "VarDclInfo"
  									 || def.type === "TypeDclInfo"
  									 || def.type === "TypeDefInfo"
  							   ){
								   varDefines[def.blockLevel][def.index][1][3].push(annotation);
								   varDefines[def.blockLevel][def.index][1][3].push(modifier);
  							   }
  							 else if(def.type === "FuncDefInfo"
  									 || def.type === "FuncDclInfo"
  									 || def.type == "ProcedureInfo"){
										 // varDefines[def.blockLevel][def.index][1][0][3].push(annotation);
										 // varDefines[def.blockLevel][def.index][1][0][3].push(modifier);
										 funcDefines[def.funcLevel][def.index][1][0][3].push(annotation);
										 funcDefines[def.funcLevel][def.index][1][0][3].push(modifier);
  									 }
  							 else{
  								 throw new Error("json2.TemplateStat: unintended type => " + def.type);
  							 }
  						 }
  						 return null;
  	    case 'BlockStat':
  						 //後付けだけど・・・
  						 var annotation = ax(t.annotations), modifier = ax(t.modifier), def = ax(t.def);
  						 if(def !== null && typeof def.type !== 'undefined'){
  							 if(def.type === "PatValDefInfo"
  									 || def.type === "PatVarDefInfo"
  									 || def.type === "TypeDefInfo"){
										 varDefines[def.blockLevel][def.index][1][3].push(annotation);
										 varDefines[def.blockLevel][def.index][1][3].push(modifier);
  									 }
							 else if(def.type === "FuncDefInfo"
  									 || def.type == "ProcedureInfo"){
										 funcDefines[def.funcLevel][def.index][1][0][3].push(annotation);
										 funcDefines[def.funcLevel][def.index][1][0][3].push(modifier);
  									 }

  							 else{
  								 throw new Error("json2.BlockStat: unintended type => " + def.type);
  							 }
  						 }
  						 return null;

  	    case 'CompilationUnit': return enclose('begin', ax(t.packages)).concat(ax(t.topStatseq));
  	    case 'Empty': return null; //どうしよう。とりあえず空文字列を返しておく
  	    case 'Ellipsis': return '...';
  	    case 'ExpressionMacroDefinition':
  	    case 'TypeMacroDefinition':
						 var srules = t.syntaxRules, output = [];
						 for(var i = 0; i < srules.length; i++){
							 output.push(sx(ax(srules[i])));
						 }
						 var lits = t.literals;
						 if(lits.length == 0) lits.push({notDelete: true});
						 else lits = lits.map(convertName);
						 return enclose('define-syntax', [t.macroName + "-Macro", ["syntax-rules", lits, output.join(' ')]] );
  	    case 'ExpressionVariable':
  	    case 'IdentifierVariable':
  	    case 'TypeVariable':
  	    case 'LiteralKeyword':
  	    case 'Variable':
  	    case 'SymbolVariable':
						 var name = convertName(t.name);
						 return name;
  	    case 'FunctionDeclaration':
  						 //Signatureを解析して，必要な変数を全て読み出す
  						 var params = [], sig = t.signature, name = convertName(sig.id.name);
  						 lambdaLevel++;
						 bSave = true;
						 varNames[lambdaLevel] = [];
  						 sig = ax(sig);
  						 params = varNames[lambdaLevel];
  						 lambdaLevel--;
  						 bSave = false;
  						 //本体はラムダの中につっこんでおく

						 if(params.length == 0){
							 params.push({notDelete: true});
						 }
						 else if(name === params[0]) params.shift();
						 // varDefines[blockLevel].push([name, [encloses('lambda', params, ["function", "FunctionDeclaration"], [], sig, ax(t.tp), null)]]);
						 funcDefines[funcLevel].push([name, [encloses('lambda', params, ["function", "FunctionDeclaration"], [], sig, ax(t.tp), null)]]);
						 // return {type:"FuncDclInfo", blockLevel: blockLevel, index:varDefines[blockLevel].length-1};
						 return {type:"FuncDclInfo", funcLevel: funcLevel, index:funcDefines[funcLevel].length-1};
  	    case 'FunctionDefinition':
  						 //Signatureを解析して，必要な変数を全て読み出す
  						 var params = [], sig = t.signature, name = convertName(sig.id.name);
  						 lambdaLevel++;
						 bSave = true;
						 varNames[lambdaLevel] = [];
  						 sig = ax(sig);
  						 params = varNames[lambdaLevel];
  						 lambdaLevel--;
  						 bSave = false;
  						 //本体はラムダの中につっこんでおく

						 if(params.length == 0){
							 params.push({notDelete: true});
						 }
						 else{
							 if(name === params[0]){
								 //解析順序より，最初に入っているのがnameであるはず．．．
								 //nameがラムダの引数に入っていると，相互再帰関数を書いたときにバグるので，取り除く
								 params.shift();
							 }
						 }
						 funcDefines[funcLevel].push([name, [encloses('lambda', params, ["function", "FunctionDefinition"], [], sig, ax(t.tp), ax(t.expr))]]);
						 return {type:"FuncDefInfo", funcLevel: funcLevel, index:funcDefines[funcLevel].length-1};
	    case 'Procedure':
  						 //Signatureを解析して，必要な変数を全て読み出す
  						 var params = [], sig = t.signature, name = convertName(sig.id.name);
  						 //....
  						 lambdaLevel++;
						 bSave = true;
						 varNames[lambdaLevel] = [];
  						 sig = ax(sig);
  						 params = varNames[lambdaLevel];
  						 lambdaLevel--;
  						 bSave = false;
  						 //本体はラムダの中につっこんでおく

						 if(params.length == 0){
							 params.push({notDelete: true});
						 }
						 else if(name === params[0]) params.shift();
						 funcDefines[funcLevel].push([name, [encloses('lambda', params, ["function", "Procedure"], [], sig, null, ax(t.block))]]);
						 return {type:"ProcedureInfo", funcLevel: funcLevel, index:funcDefines[funcLevel].length-1};



  	    case 'integerLiteral': return t.value;
  	    case 'MacroForm': return ax(t.inputForm);
  	    case 'MacroName': return t.name + "-Macro";
  	    case 'OneLine': return null; //とりあえずnull
	    case 'PatValDef':
					    var patterns = t.body.patterns;
					    var expr = t.body.expr;
					    var res = [];
					    for(var i = 0; i < patterns.length; i++){
						    var e = patterns[i];
						    varDefines[blockLevel].push([convertName(e.id), [["val", "variable"], [ax(e.tp)], ax(expr), []]]);
					    }
					    return {type:"PatValDefInfo", blockLevel: blockLevel, index:varDefines[blockLevel].length-1};
	    case 'PatVarDef':
					    var patterns = t.body.patterns;
					    var expr = t.body.expr;
					    var res = [];
					    for(var i = 0; i < patterns.length; i++){
						    var e = patterns[i];
						    //(define 変数名 ((val or var) (変数名についている情報) (右辺)))
						    varDefines[blockLevel].push([convertName(e.id), [["var", "variable"], [ax(e.tp)], ax(expr), []]]);
					    }
					    // 何を返す？とりあえずnull
					    return {type:"PatVarDefInfo", blockLevel: blockLevel, index:varDefines[blockLevel].length-1};
	    case 'ValueDeclaration':
					    var patterns = t.patterns;
						var res = [];
						for(var i = 0; i < patterns.length; i++){
							var e = patterns[i];
							//(define 変数名 ((val or var) (変数名についている情報) (右辺)))
							varDefines[blockLevel].push([convertName(e.id), [["val", "variable"], [ax(e.tp)], ax(null), []]]);
						}
						return {type:"ValDclInfo", blockLevel: blockLevel, index:varDefines[blockLevel].length-1};
		case 'VariableDeclaration':
						var patterns = t.patterns;
						var res = [];
						for(var i = 0; i < patterns.length; i++){
							var e = patterns[i];
							//(define 変数名 ((val or var) (変数名についている情報) (右辺)))
							varDefines[blockLevel].push([convertName(e.id), [["var", "variable"], [ax(e.tp)], ax(null), []]]);
						}
						return {type:"VarDclInfo", blockLevel: blockLevel, index:varDefines[blockLevel].length-1};
		case 'TypeDeclaration':
						var e = t.pattern;
						//(define 変数名 ((val or var) (変数名についている情報) (右辺)))
						varDefines[blockLevel].push([convertName(e.id), [["type", "TypeDeclaration"], [ax(e.tpc), ax(e.left), ax(e.right)], ax(null), []]]);
						return {type:"TypeDclInfo", blockLevel: blockLevel, index:varDefines[blockLevel].length-1};
	                    // case 'TypeDefinition':
	    case 'TypeDefinition':
						var e = t.body.pattern;
						//(define 変数名 ((val or var) (変数名についている情報) (右辺)))
						varDefines[blockLevel].push([convertName(e.id), [["type", "TypeDefinition"], [ax(e.paramClause)], ax(e.tp), []]]);
						// 何を返す？とりあえずnull
						// return null;
						return {type:"TypeDefInfo", blockLevel: blockLevel, index:varDefines[blockLevel].length-1};
  	    case 'Program': return enclose('begin', ax(t.elements));
		case 'PunctuationMark': return ''; //空文字列を返すと、joinで無視される
  	    case 'RepBlock':
  	    case 'Repetition': return ax(t.elements);
  	    case 'Repeat': //List->Vector

  						   return t.elements.map(ax).map(sx).join(' ');
  	    case 'SyntaxRule':
 	 					   var ptn, tmpl;
 	 					   ptn = ax(t.pattern);
 	 					   bTemplate = true;
 	 					   tmpl = ax(t.template);
 	 					   bTemplate = false;
 	 					   return [enclose("_", ptn), tmpl];
		case 'TopStatSeq':
 	 					   return ax(t.topstat);

  	    default:
						   var res = [];
						   if(typeof(spec) == "undefined"){
							   throw new Error("undefined spec. : " + t.type);
						   }
						   spec.forEach(function (f, i) {
							   if(typeof(t[f]) == "undefined"){
								   throw new Error("defined member is undefined. type: " + t.type + ", member: " + f);
							   }
          					   if(0 < i) res.push(ax(t[f]));
      					   });
						   // if(DEBUG) console.log("type: " + t.type + ", res = " + JSON.stringify(res));
						   return ScalaTag(t.type, res);
    }
    }

    function sx(t) {
        if (Array.isArray(t)) {
  	        if(t.length == 0) return NULL;
  	        if(t.length == 1){
  		        var e = t[0];
  		        if(e !== null && e.notDelete !== undefined) return "()";
  		        else return '(' + sx(e) + ')';
  	        }
  	        else return '(' + t.map(sx).join(' ') + ')';
        }
        else if(t == null) return NULL;
        else return t;
    }

    exports.convert = function (t, output) {
        var fd = typeof output === 'number' ? output :
  	        typeof output === 'string' ? fs.openSync(output, 'w') : false;

        var s = sx(ax(t));
        if (fd) {
            fs.writeSync(fd, s);
            fs.writeSync(fd, "\n");
            fs.closeSync(fd);
        }
        return s;
    };
