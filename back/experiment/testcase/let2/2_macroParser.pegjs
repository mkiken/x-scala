CheckOuterMacro
 = { return outerMacro; }

CharacterStatement
 = &{}

OneLine
 = &{}

start
 = CompilationUnit

ExpressionMacro
 = (&{ return macroType; } form:Sequence__102
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__105
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__33
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__50
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__65
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__80
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__93
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__98
{ return { type: "MacroForm", inputForm: form }; }) 
 / form:Sequence__16
{ return { type: "MacroForm", inputForm: form }; }

RejectWords
 = "," 
 / "=" 
 / "::"

MacroName__0 = "Let" !IdentifierPart
 { return { type: "MacroName", name:"Let" }; } 
LiteralKeyword__6 = v:MacroKeyword &{ return v.name === "="; }
 { return v; } 
LiteralKeyword__7 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__8 = t0:MacroIdentifier __ t1:LiteralKeyword__6 __ t2:Expr __ t3:LiteralKeyword__7 __ t4:Type { return [t0, t1, t2, t3, t4]; } 
RepBlock__5 = t0:Sequence__8 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__2__3 = __ "," __ RepBlock__5 
LiteralKeyword__10 = v:MacroKeyword &{ return v.name === "="; }
 { return v; } 
LiteralKeyword__11 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__12 = t0:MacroIdentifier __ t1:LiteralKeyword__10 __ t2:Expr __ t3:LiteralKeyword__11 __ t4:Type { return [t0, t1, t2, t3, t4]; } 
RepBlock__9 = t0:Sequence__12 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__2 = head:RepBlock__9
 tail:Repetition__2__3*
{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  return { type: "Repeat", elements: elements };
}
 
Sequence__13 = t0:Repetition__2 { return [t0]; } 
Paren__1 = "(" __ t0:Sequence__13 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__15 = t0:Expr { return [t0]; } 
Brace__14 = "{" __ t0:Sequence__15 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__16 = t0:MacroName__0 __ t1:Paren__1 __ t2:Brace__14 { return [t0, t1, t2]; } 
MacroName__17 = "Let" !IdentifierPart
 { return { type: "MacroName", name:"Let" }; } 
LiteralKeyword__23 = v:MacroKeyword &{ return v.name === "="; }
 { return v; } 
LiteralKeyword__24 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__25 = t0:MacroIdentifier __ t1:LiteralKeyword__23 __ t2:Expr __ t3:LiteralKeyword__24 __ t4:Type { return [t0, t1, t2, t3, t4]; } 
RepBlock__22 = t0:Sequence__25 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__19__20 = __ "," __ RepBlock__22 
Repetition__19__21 = __ "," __ "..."
 
LiteralKeyword__27 = v:MacroKeyword &{ return v.name === "="; }
 { return v; } 
LiteralKeyword__28 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__29 = t0:MacroIdentifier __ t1:LiteralKeyword__27 __ t2:Expr __ t3:LiteralKeyword__28 __ t4:Type { return [t0, t1, t2, t3, t4]; } 
RepBlock__26 = t0:Sequence__29 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__19 = head:RepBlock__26
 tail:Repetition__19__20*
ellipsis:Repetition__19__21{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  if (ellipsis) elements.push({ type: "Ellipsis" });
  return { type: "Repeat", elements: elements };
}
 
Sequence__30 = t0:Repetition__19 { return [t0]; } 
Paren__18 = "(" __ t0:Sequence__30 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__32 = t0:Expr { return [t0]; } 
Brace__31 = "{" __ t0:Sequence__32 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__33 = t0:MacroName__17 __ t1:Paren__18 __ t2:Brace__31 { return [t0, t1, t2]; } 
MacroName__34 = "Let" !IdentifierPart
 { return { type: "MacroName", name:"Let" }; } 
LiteralKeyword__40 = v:MacroKeyword &{ return v.name === "="; }
 { return v; } 
LiteralKeyword__41 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__42 = t0:LiteralKeyword__40 __ t1:Expr __ t2:LiteralKeyword__41 __ t3:Type { return [t0, t1, t2, t3]; } 
RepBlock__39 = t0:Sequence__42 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__36__37 = __ "," __ RepBlock__39 
Repetition__36__38 = __ "," __ "..."
 
LiteralKeyword__44 = v:MacroKeyword &{ return v.name === "="; }
 { return v; } 
LiteralKeyword__45 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__46 = t0:LiteralKeyword__44 __ t1:Expr __ t2:LiteralKeyword__45 __ t3:Type { return [t0, t1, t2, t3]; } 
RepBlock__43 = t0:Sequence__46 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__36 = head:RepBlock__43
 tail:Repetition__36__37*
ellipsis:Repetition__36__38{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  if (ellipsis) elements.push({ type: "Ellipsis" });
  return { type: "Repeat", elements: elements };
}
 
Sequence__47 = t0:Repetition__36 { return [t0]; } 
Paren__35 = "(" __ t0:Sequence__47 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__49 = t0:Expr { return [t0]; } 
Brace__48 = "{" __ t0:Sequence__49 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__50 = t0:MacroName__34 __ t1:Paren__35 __ t2:Brace__48 { return [t0, t1, t2]; } 
MacroName__51 = "Let" !IdentifierPart
 { return { type: "MacroName", name:"Let" }; } 
LiteralKeyword__57 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__58 = t0:Expr __ t1:LiteralKeyword__57 __ t2:Type { return [t0, t1, t2]; } 
RepBlock__56 = t0:Sequence__58 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__53__54 = __ "," __ RepBlock__56 
Repetition__53__55 = __ "," __ "..."
 
LiteralKeyword__60 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__61 = t0:Expr __ t1:LiteralKeyword__60 __ t2:Type { return [t0, t1, t2]; } 
RepBlock__59 = t0:Sequence__61 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__53 = head:RepBlock__59
 tail:Repetition__53__54*
ellipsis:Repetition__53__55{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  if (ellipsis) elements.push({ type: "Ellipsis" });
  return { type: "Repeat", elements: elements };
}
 
Sequence__62 = t0:Repetition__53 { return [t0]; } 
Paren__52 = "(" __ t0:Sequence__62 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__64 = t0:Expr { return [t0]; } 
Brace__63 = "{" __ t0:Sequence__64 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__65 = t0:MacroName__51 __ t1:Paren__52 __ t2:Brace__63 { return [t0, t1, t2]; } 
MacroName__66 = "Let" !IdentifierPart
 { return { type: "MacroName", name:"Let" }; } 
LiteralKeyword__72 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__73 = t0:LiteralKeyword__72 __ t1:Type { return [t0, t1]; } 
RepBlock__71 = t0:Sequence__73 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__68__69 = __ "," __ RepBlock__71 
Repetition__68__70 = __ "," __ "..."
 
LiteralKeyword__75 = v:MacroKeyword &{ return v.name === "::"; }
 { return v; } 
Sequence__76 = t0:LiteralKeyword__75 __ t1:Type { return [t0, t1]; } 
RepBlock__74 = t0:Sequence__76 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__68 = head:RepBlock__74
 tail:Repetition__68__69*
ellipsis:Repetition__68__70{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  if (ellipsis) elements.push({ type: "Ellipsis" });
  return { type: "Repeat", elements: elements };
}
 
Sequence__77 = t0:Repetition__68 { return [t0]; } 
Paren__67 = "(" __ t0:Sequence__77 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__79 = t0:Expr { return [t0]; } 
Brace__78 = "{" __ t0:Sequence__79 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__80 = t0:MacroName__66 __ t1:Paren__67 __ t2:Brace__78 { return [t0, t1, t2]; } 
MacroName__81 = "Let" !IdentifierPart
 { return { type: "MacroName", name:"Let" }; } 
Sequence__87 = t0:Type { return [t0]; } 
RepBlock__86 = t0:Sequence__87 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__83__84 = __ "," __ RepBlock__86 
Repetition__83__85 = __ "," __ "..."
 
Sequence__89 = t0:Type { return [t0]; } 
RepBlock__88 = t0:Sequence__89 __ 
 { return { type: "RepBlock", elements: t0 }; } 
Repetition__83 = head:RepBlock__88
 tail:Repetition__83__84*
ellipsis:Repetition__83__85{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  if (ellipsis) elements.push({ type: "Ellipsis" });
  return { type: "Repeat", elements: elements };
}
 
Sequence__90 = t0:Repetition__83 { return [t0]; } 
Paren__82 = "(" __ t0:Sequence__90 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__92 = t0:Expr { return [t0]; } 
Brace__91 = "{" __ t0:Sequence__92 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__93 = t0:MacroName__81 __ t1:Paren__82 __ t2:Brace__91 { return [t0, t1, t2]; } 
MacroName__94 = "Let" !IdentifierPart
 { return { type: "MacroName", name:"Let" }; } 
Paren__95 = "(" __ ")"
 { return { type: "Paren", elements: [] }; } 
Sequence__97 = t0:Expr { return [t0]; } 
Brace__96 = "{" __ t0:Sequence__97 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__98 = t0:MacroName__94 __ t1:Paren__95 __ t2:Brace__96 { return [t0, t1, t2]; } 
MacroName__99 = "Let" !IdentifierPart
 { return { type: "MacroName", name:"Let" }; } 
Sequence__101 = t0:Expr { return [t0]; } 
Brace__100 = "{" __ t0:Sequence__101 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__102 = t0:MacroName__99 __ t1:Brace__100 { return [t0, t1]; } 
MacroName__103 = "Let" !IdentifierPart
 { return { type: "MacroName", name:"Let" }; } 
Brace__104 = "{" __ "}"
 { return { type: "Brace", elements: [] }; } 
Sequence__105 = t0:MacroName__103 __ t1:Brace__104 { return [t0, t1]; }
