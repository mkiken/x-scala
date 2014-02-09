var PEG = require("pegjs");
var names = [
	'./scala.pegjs',
	'./_scala.pegjs',
	'./test.pegjs',
	// __dirname + '/ex-scala.pegjs',
	// '/Users/kensuke/Downloads/ex-scala.pegjs',
	__dirname + '/scala-parser.pegjs',
	__dirname + '/test.pegjs'
];
var fs = require("fs");
var name = names[3];
var dt = new Date();
// console.log(dt);
// console.log("grammar is " + name);
var args = process.argv;
// console.error("compileAndTest.js: args = [%s]", args);
var gram = fs.readFileSync( name, 'utf8');
var parser = PEG.buildParser(gram, {cache: true});
//var contents = fs.readFileSync(  './testcase/test015_arith.grm' ).toString();


//console.log(ns);

var scalas = [
	'./testcase/A2.scala',
	'./testcase/totr.scala',
	'./testcase/utopian-tree.scala',
	'./testcase/counter.scala',
	'./testcase/power-of-large-numbers.scala',
	'./testcase/leballs.scala', //5
	'./testcase/anagram.scala',
	'./testcase/bday-gift.scala',
	'./testcase/A.scala',
	'./testcase/Test.scala',
	'./testcase/util.scala', //10
	'./input.txt',
	'./input.tmp'
];
// var sname = scalas[12];
var sname = args[2];
var scala = fs.readFileSync( sname, 'utf8');
// console.log("scala file is " + sname);

console.error("parser built!");
	console.log(JSON.stringify(parser.parse(scala), null,  2 ));


