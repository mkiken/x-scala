CheckOuterMacro
 = { return outerMacro; }

CharacterStatement
 = &{}

OneLine
 = &{}

start
 = CompilationUnit

ExpressionMacro
 = (&{ return macroType; } form:Sequence__13
{ return { type: "MacroForm", inputForm: form }; }) 
 / (&{ return macroType; } form:Sequence__16
{ return { type: "MacroForm", inputForm: form }; }) 
 / form:Sequence__6
{ return { type: "MacroForm", inputForm: form }; }

RejectWords
 = ","

MacroName__0 = "Max" !IdentifierPart
 { return { type: "MacroName", name:"Max" }; } 
Repetition__2__3 = __ "," __ Expr 
Repetition__2 = head:Expr
 tail:Repetition__2__3*
{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  return { type: "Repeat", elements: elements };
}
 
Sequence__5 = t0:Repetition__2 { return [t0]; } 
Paren__1 = "(" __ t0:Sequence__5 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__6 = t0:MacroName__0 __ t1:Paren__1 { return [t0, t1]; } 
MacroName__7 = "Max" !IdentifierPart
 { return { type: "MacroName", name:"Max" }; } 
Repetition__9__10 = __ "," __ Expr 
Repetition__9__11 = __ "," __ "..."
 
Repetition__9 = head:Expr
 tail:Repetition__9__10*
ellipsis:Repetition__9__11{ var elements = [head];
  for (var i=0; i<tail.length; i++) {
    elements.push(tail[i][3]);
  }
  if (ellipsis) elements.push({ type: "Ellipsis" });
  return { type: "Repeat", elements: elements };
}
 
Sequence__12 = t0:Repetition__9 { return [t0]; } 
Paren__8 = "(" __ t0:Sequence__12 __ ")"
 { return { type: "Paren", elements: t0 }; } 
Sequence__13 = t0:MacroName__7 __ t1:Paren__8 { return [t0, t1]; } 
MacroName__14 = "Max" !IdentifierPart
 { return { type: "MacroName", name:"Max" }; } 
Paren__15 = "(" __ ")"
 { return { type: "Paren", elements: [] }; } 
Sequence__16 = t0:MacroName__14 __ t1:Paren__15 { return [t0, t1]; }
