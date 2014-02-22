CheckOuterMacro
 = { return outerMacro; }

CharacterStatement
 = &{}

OneLine
 = &{}

start
 = CompilationUnit

ExpressionMacro
 = (&{ return macroType; } form:Sequence__14
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__18
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__21
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__9
{ return { type: "MacroForm", inputForm: form }; }) 
 / form:Sequence__4
{ return { type: "MacroForm", inputForm: form }; }

RejectWords
 = ".."

MacroName__0 = "makeArray" !IdentifierPart
 { return { type: "MacroName", name:"makeArray" }; } 
LiteralKeyword__2 = v:MacroKeyword &{ return v.name === ".."; }
 { return v; } 
Sequence__3 = t0:Expr __ t1:LiteralKeyword__2 __ t2:Expr { return [t0, t1, t2]; } 
Bracket__1 = "[" __ t0:Sequence__3 __ "]"
 { return { type: "Bracket", elements: t0 }; } 
Sequence__4 = t0:MacroName__0 __ t1:Bracket__1 { return [t0, t1]; } 
MacroName__5 = "makeArray" !IdentifierPart
 { return { type: "MacroName", name:"makeArray" }; } 
LiteralKeyword__7 = v:MacroKeyword &{ return v.name === ".."; }
 { return v; } 
Sequence__8 = t0:Expr __ t1:LiteralKeyword__7 __ t2:Expr { return [t0, t1, t2]; } 
Bracket__6 = "[" __ t0:Sequence__8 __ "]"
 { return { type: "Bracket", elements: t0 }; } 
Sequence__9 = t0:MacroName__5 __ t1:Bracket__6 { return [t0, t1]; } 
MacroName__10 = "makeArray" !IdentifierPart
 { return { type: "MacroName", name:"makeArray" }; } 
LiteralKeyword__12 = v:MacroKeyword &{ return v.name === ".."; }
 { return v; } 
Sequence__13 = t0:LiteralKeyword__12 __ t1:Expr { return [t0, t1]; } 
Bracket__11 = "[" __ t0:Sequence__13 __ "]"
 { return { type: "Bracket", elements: t0 }; } 
Sequence__14 = t0:MacroName__10 __ t1:Bracket__11 { return [t0, t1]; } 
MacroName__15 = "makeArray" !IdentifierPart
 { return { type: "MacroName", name:"makeArray" }; } 
Sequence__17 = t0:Expr { return [t0]; } 
Bracket__16 = "[" __ t0:Sequence__17 __ "]"
 { return { type: "Bracket", elements: t0 }; } 
Sequence__18 = t0:MacroName__15 __ t1:Bracket__16 { return [t0, t1]; } 
MacroName__19 = "makeArray" !IdentifierPart
 { return { type: "MacroName", name:"makeArray" }; } 
Bracket__20 = "[" __ "]"
 { return { type: "Bracket", elements: [] }; } 
Sequence__21 = t0:MacroName__19 __ t1:Bracket__20 { return [t0, t1]; }
