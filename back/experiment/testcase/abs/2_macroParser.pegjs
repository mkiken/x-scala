CheckOuterMacro
 = { return outerMacro; }

CharacterStatement
 = &{}

OneLine
 = &{}

start
 = CompilationUnit

ExpressionMacro
 = (&{ return macroType; } form:Sequence__3
{ return { type: "MacroForm", inputForm: form }; }) 
 / form:Sequence__1
{ return { type: "MacroForm", inputForm: form }; }

MacroName__0 = "Abs" !IdentifierPart
 { return { type: "MacroName", name:"Abs" }; } 
Sequence__1 = t0:MacroName__0 __ t1:MacroIdentifier { return [t0, t1]; } 
MacroName__2 = "Abs" !IdentifierPart
 { return { type: "MacroName", name:"Abs" }; } 
Sequence__3 = t0:MacroName__2 __ t1:MacroIdentifier { return [t0, t1]; }
