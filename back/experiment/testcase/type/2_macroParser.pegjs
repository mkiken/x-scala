CheckOuterMacro
 = { return outerMacro; }

CharacterStatement
 = &{}

OneLine
 = &{}

start
 = CompilationUnit

TypeMacro
 = form:Sequence__2
{ return { type: "MacroForm", inputForm: form }; } 
 / form:Sequence__5
{ return { type: "MacroForm", inputForm: form }; } 
 / (&{ return macroType; } form:Sequence__11
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__8
{ return { type: "MacroForm", inputForm: form }; }) 
 / form:Sequence__14
{ return { type: "MacroForm", inputForm: form }; } 
 / (&{ return macroType; } form:Sequence__17
{ return { type: "MacroForm", inputForm: form }; }) 
 / form:Sequence__21
{ return { type: "MacroForm", inputForm: form }; } 
 / (&{ return macroType; } form:Sequence__25
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__28
{ return { type: "MacroForm", inputForm: form }; })

RejectWords
 = "1.1" 
 / "1.2" 
 / "str"

MacroName__0 = "T" !IdentifierPart
 { return { type: "MacroName", name:"T" }; } 
floatingPointLiteral__1 = v:Literal &{ return v.type === "floatingPointLiteral" && String(v.value) == "1.1"; }
 { return v; } 
Sequence__2 = t0:MacroName__0 __ t1:floatingPointLiteral__1 { return [t0, t1]; } 
MacroName__3 = "T" !IdentifierPart
 { return { type: "MacroName", name:"T" }; } 
floatingPointLiteral__4 = v:Literal &{ return v.type === "floatingPointLiteral" && String(v.value) == "1.2"; }
 { return v; } 
Sequence__5 = t0:MacroName__3 __ t1:floatingPointLiteral__4 { return [t0, t1]; } 
MacroName__6 = "T" !IdentifierPart
 { return { type: "MacroName", name:"T" }; } 
floatingPointLiteral__7 = v:Literal &{ return v.type === "floatingPointLiteral" && String(v.value) == "1.1"; }
 { return v; } 
Sequence__8 = t0:MacroName__6 __ t1:floatingPointLiteral__7 { return [t0, t1]; } 
MacroName__9 = "T" !IdentifierPart
 { return { type: "MacroName", name:"T" }; } 
floatingPointLiteral__10 = v:Literal &{ return v.type === "floatingPointLiteral" && String(v.value) == "1.2"; }
 { return v; } 
Sequence__11 = t0:MacroName__9 __ t1:floatingPointLiteral__10 { return [t0, t1]; } 
MacroName__12 = "L" !IdentifierPart
 { return { type: "MacroName", name:"L" }; } 
symbolLiteral__13 = v:Literal &{ return v.type === "symbolLiteral" && String(v.value) == "str"; }
 { return v; } 
Sequence__14 = t0:MacroName__12 __ t1:symbolLiteral__13 { return [t0, t1]; } 
MacroName__15 = "L" !IdentifierPart
 { return { type: "MacroName", name:"L" }; } 
symbolLiteral__16 = v:Literal &{ return v.type === "symbolLiteral" && String(v.value) == "str"; }
 { return v; } 
Sequence__17 = t0:MacroName__15 __ t1:symbolLiteral__16 { return [t0, t1]; } 
MacroName__18 = "F" !IdentifierPart
 { return { type: "MacroName", name:"F" }; } 
Sequence__20 = t0:MacroIdentifier { return [t0]; } 
Paren__19 = "(" __ t0:Sequence__20 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__21 = t0:MacroName__18 __ t1:Paren__19 { return [t0, t1]; } 
MacroName__22 = "F" !IdentifierPart
 { return { type: "MacroName", name:"F" }; } 
Sequence__24 = t0:MacroIdentifier { return [t0]; } 
Paren__23 = "(" __ t0:Sequence__24 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__25 = t0:MacroName__22 __ t1:Paren__23 { return [t0, t1]; } 
MacroName__26 = "F" !IdentifierPart
 { return { type: "MacroName", name:"F" }; } 
Paren__27 = "(" __ ")"
 { return { type: "Paren", elements: [] }; } 
Sequence__28 = t0:MacroName__26 __ t1:Paren__27 { return [t0, t1]; }
