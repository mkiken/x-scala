CheckOuterMacro
 = { return outerMacro; }

CharacterStatement
 = &{}

OneLine
 = &{}

start
 = CompilationUnit

ExpressionMacro
 = (&{ return macroType; } form:Sequence__5
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__7
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__9
{ return { type: "MacroForm", inputForm: form }; }) 
 / form:Sequence__1
{ return { type: "MacroForm", inputForm: form }; } 
 / form:Sequence__3
{ return { type: "MacroForm", inputForm: form }; }

MacroName__0 = ">>" !IdentifierPart
 { return { type: "MacroName", name:">>" }; } 
Sequence__1 = t0:MacroName__0 __ t1:MacroSymbol __ t2:MacroSymbol { return [t0, t1, t2]; } 
MacroName__2 = ">>" !IdentifierPart
 { return { type: "MacroName", name:">>" }; } 
Sequence__3 = t0:MacroName__2 __ t1:MacroSymbol { return [t0, t1]; } 
MacroName__4 = ">>" !IdentifierPart
 { return { type: "MacroName", name:">>" }; } 
Sequence__5 = t0:MacroName__4 __ t1:MacroSymbol __ t2:MacroSymbol { return [t0, t1, t2]; } 
MacroName__6 = ">>" !IdentifierPart
 { return { type: "MacroName", name:">>" }; } 
Sequence__7 = t0:MacroName__6 __ t1:MacroSymbol { return [t0, t1]; } 
MacroName__8 = ">>" !IdentifierPart
 { return { type: "MacroName", name:">>" }; } 
Sequence__9 = t0:MacroName__8 __ t1:MacroSymbol { return [t0, t1]; }
