Expression FOR {
    Expression e, block, s;
    Identifier i;

    { FOR (i, e) block ->
        for(i <- 0 to e) block}
    { FOR (i, s, e) block ->
        for(i <- s to e)) block}
}

object ForStmt{
  def main(args: Array[String]): Unit = {
    (FOR(a, 3){println(a);});
    (FOR(o, 10, 24){println(o);});
  }
}
