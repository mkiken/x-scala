CheckOuterMacro
 = { return outerMacro; }

CharacterStatement
 = &{}

OneLine
 = &{}

start
 = CompilationUnit

ExpressionMacro
 = (&{ return macroType; } form:Sequence__19
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__28
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__36
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__41
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__45
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__48
{ return { type: "MacroForm", inputForm: form }; }) 
 / form:Sequence__9
{ return { type: "MacroForm", inputForm: form }; }

RejectWords
 = "," 
 / "and"

MacroName__0 = "display" !IdentifierPart
 { return { type: "MacroName", name:"display" }; } 
Sequence__2 = t0:Expr { return [t0]; } 
Paren__1 = "(" __ t0:Sequence__2 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Repetition__4__5 = __ "," __ Expr 
Repetition__4 = head:Expr
 tail:Repetition__4__5*
{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  return { type: "Repeat", elements: elements };
}
 
LiteralKeyword__7 = v:MacroKeyword &{ return v.name === "and"; }
 { return v; } 
Sequence__8 = t0:Repetition__4 __ t1:LiteralKeyword__7 __ t2:Expr { return [t0, t1, t2]; } 
Brace__3 = "{" __ t0:Sequence__8 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__9 = t0:MacroName__0 __ t1:Paren__1 __ t2:Brace__3 { return [t0, t1, t2]; } 
MacroName__10 = "display" !IdentifierPart
 { return { type: "MacroName", name:"display" }; } 
Sequence__12 = t0:Expr { return [t0]; } 
Paren__11 = "(" __ t0:Sequence__12 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Repetition__14__15 = __ "," __ Expr 
Repetition__14__16 = __ "," __ "..."
 
Repetition__14 = head:Expr
 tail:Repetition__14__15*
ellipsis:Repetition__14__16{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  if (ellipsis) elements.push({ type: "Ellipsis" });
  return { type: "Repeat", elements: elements };
}
 
LiteralKeyword__17 = v:MacroKeyword &{ return v.name === "and"; }
 { return v; } 
Sequence__18 = t0:Repetition__14 __ t1:LiteralKeyword__17 __ t2:Expr { return [t0, t1, t2]; } 
Brace__13 = "{" __ t0:Sequence__18 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__19 = t0:MacroName__10 __ t1:Paren__11 __ t2:Brace__13 { return [t0, t1, t2]; } 
MacroName__20 = "display" !IdentifierPart
 { return { type: "MacroName", name:"display" }; } 
Paren__21 = "(" __ ")"
 { return { type: "Paren", elements: [] }; } 
Repetition__23__24 = __ "," __ Expr 
Repetition__23__25 = __ "," __ "..."
 
Repetition__23 = head:Expr
 tail:Repetition__23__24*
ellipsis:Repetition__23__25{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  if (ellipsis) elements.push({ type: "Ellipsis" });
  return { type: "Repeat", elements: elements };
}
 
LiteralKeyword__26 = v:MacroKeyword &{ return v.name === "and"; }
 { return v; } 
Sequence__27 = t0:Repetition__23 __ t1:LiteralKeyword__26 __ t2:Expr { return [t0, t1, t2]; } 
Brace__22 = "{" __ t0:Sequence__27 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__28 = t0:MacroName__20 __ t1:Paren__21 __ t2:Brace__22 { return [t0, t1, t2]; } 
MacroName__29 = "display" !IdentifierPart
 { return { type: "MacroName", name:"display" }; } 
Repetition__31__32 = __ "," __ Expr 
Repetition__31__33 = __ "," __ "..."
 
Repetition__31 = head:Expr
 tail:Repetition__31__32*
ellipsis:Repetition__31__33{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  if (ellipsis) elements.push({ type: "Ellipsis" });
  return { type: "Repeat", elements: elements };
}
 
LiteralKeyword__34 = v:MacroKeyword &{ return v.name === "and"; }
 { return v; } 
Sequence__35 = t0:Repetition__31 __ t1:LiteralKeyword__34 __ t2:Expr { return [t0, t1, t2]; } 
Brace__30 = "{" __ t0:Sequence__35 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__36 = t0:MacroName__29 __ t1:Brace__30 { return [t0, t1]; } 
MacroName__37 = "display" !IdentifierPart
 { return { type: "MacroName", name:"display" }; } 
LiteralKeyword__39 = v:MacroKeyword &{ return v.name === "and"; }
 { return v; } 
Sequence__40 = t0:LiteralKeyword__39 __ t1:Expr { return [t0, t1]; } 
Brace__38 = "{" __ t0:Sequence__40 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__41 = t0:MacroName__37 __ t1:Brace__38 { return [t0, t1]; } 
MacroName__42 = "display" !IdentifierPart
 { return { type: "MacroName", name:"display" }; } 
Sequence__44 = t0:Expr { return [t0]; } 
Brace__43 = "{" __ t0:Sequence__44 __ "}"
 { return { type: "Brace", elements: t0 }; } 
Sequence__45 = t0:MacroName__42 __ t1:Brace__43 { return [t0, t1]; } 
MacroName__46 = "display" !IdentifierPart
 { return { type: "MacroName", name:"display" }; } 
Brace__47 = "{" __ "}"
 { return { type: "Brace", elements: [] }; } 
Sequence__48 = t0:MacroName__46 __ t1:Brace__47 { return [t0, t1]; }
