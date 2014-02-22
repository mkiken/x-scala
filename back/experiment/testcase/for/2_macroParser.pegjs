CheckOuterMacro
 = { return outerMacro; }

CharacterStatement
 = &{}

OneLine
 = &{}

start
 = CompilationUnit

ExpressionMacro
 = (&{ return macroType; } form:Sequence__41
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__15
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__24
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__27
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__29
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__35
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__20
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__46
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__51
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__55
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__58
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__60
{ return { type: "MacroForm", inputForm: form }; }) 
 / form:Sequence__10
{ return { type: "MacroForm", inputForm: form }; } 
 / form:Sequence__4
{ return { type: "MacroForm", inputForm: form }; }

RejectWords
 = ","

MacroName__0 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
PunctuationMark__2 = ","
 { return { type: "PunctuationMark", value: "," }; } 
Sequence__3 = t0:MacroIdentifier __ t1:PunctuationMark__2 __ t2:Expr { return [t0, t1, t2]; } 
Paren__1 = "(" __ t0:Sequence__3 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__4 = t0:MacroName__0 __ t1:Paren__1 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__5 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
PunctuationMark__7 = ","
 { return { type: "PunctuationMark", value: "," }; } 
PunctuationMark__8 = ","
 { return { type: "PunctuationMark", value: "," }; } 
Sequence__9 = t0:MacroIdentifier __ t1:PunctuationMark__7 __ t2:Expr __ t3:PunctuationMark__8 __ t4:Expr { return [t0, t1, t2, t3, t4]; } 
Paren__6 = "(" __ t0:Sequence__9 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__10 = t0:MacroName__5 __ t1:Paren__6 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__11 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
PunctuationMark__13 = ","
 { return { type: "PunctuationMark", value: "," }; } 
Sequence__14 = t0:MacroIdentifier __ t1:PunctuationMark__13 __ t2:Expr { return [t0, t1, t2]; } 
Paren__12 = "(" __ t0:Sequence__14 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__15 = t0:MacroName__11 __ t1:Paren__12 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__16 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
PunctuationMark__18 = ","
 { return { type: "PunctuationMark", value: "," }; } 
Sequence__19 = t0:PunctuationMark__18 __ t1:Expr { return [t0, t1]; } 
Paren__17 = "(" __ t0:Sequence__19 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__20 = t0:MacroName__16 __ t1:Paren__17 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__21 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
Sequence__23 = t0:Expr { return [t0]; } 
Paren__22 = "(" __ t0:Sequence__23 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__24 = t0:MacroName__21 __ t1:Paren__22 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__25 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
Paren__26 = "(" __ ")"
 { return { type: "Paren", elements: [] }; } 
Sequence__27 = t0:MacroName__25 __ t1:Paren__26 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__28 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
Sequence__29 = t0:MacroName__28 __ t1:Expr { return [t0, t1]; } 
MacroName__30 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
PunctuationMark__32 = ","
 { return { type: "PunctuationMark", value: "," }; } 
PunctuationMark__33 = ","
 { return { type: "PunctuationMark", value: "," }; } 
Sequence__34 = t0:MacroIdentifier __ t1:PunctuationMark__32 __ t2:Expr __ t3:PunctuationMark__33 __ t4:Expr { return [t0, t1, t2, t3, t4]; } 
Paren__31 = "(" __ t0:Sequence__34 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__35 = t0:MacroName__30 __ t1:Paren__31 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__36 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
PunctuationMark__38 = ","
 { return { type: "PunctuationMark", value: "," }; } 
PunctuationMark__39 = ","
 { return { type: "PunctuationMark", value: "," }; } 
Sequence__40 = t0:PunctuationMark__38 __ t1:Expr __ t2:PunctuationMark__39 __ t3:Expr { return [t0, t1, t2, t3]; } 
Paren__37 = "(" __ t0:Sequence__40 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__41 = t0:MacroName__36 __ t1:Paren__37 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__42 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
PunctuationMark__44 = ","
 { return { type: "PunctuationMark", value: "," }; } 
Sequence__45 = t0:Expr __ t1:PunctuationMark__44 __ t2:Expr { return [t0, t1, t2]; } 
Paren__43 = "(" __ t0:Sequence__45 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__46 = t0:MacroName__42 __ t1:Paren__43 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__47 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
PunctuationMark__49 = ","
 { return { type: "PunctuationMark", value: "," }; } 
Sequence__50 = t0:PunctuationMark__49 __ t1:Expr { return [t0, t1]; } 
Paren__48 = "(" __ t0:Sequence__50 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__51 = t0:MacroName__47 __ t1:Paren__48 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__52 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
Sequence__54 = t0:Expr { return [t0]; } 
Paren__53 = "(" __ t0:Sequence__54 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__55 = t0:MacroName__52 __ t1:Paren__53 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__56 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
Paren__57 = "(" __ ")"
 { return { type: "Paren", elements: [] }; } 
Sequence__58 = t0:MacroName__56 __ t1:Paren__57 __ t2:Expr { return [t0, t1, t2]; } 
MacroName__59 = "FOR" !IdentifierPart
 { return { type: "MacroName", name:"FOR" }; } 
Sequence__60 = t0:MacroName__59 __ t1:Expr { return [t0, t1]; }
