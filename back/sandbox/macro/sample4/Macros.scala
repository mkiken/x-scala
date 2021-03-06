import scala.reflect.macros.Context
import collection.mutable.ListBuffer
import collection.mutable.Stack
import language.experimental.macros

object Macros {
  def printf(format: String, params: Any*): Unit = macro printf_impl

  def printf_impl(c: Context)(format: c.Expr[String],
    params: c.Expr[Any]*): c.Expr[Unit] = {

    import c.universe._

    val Literal(Constant(s_format: String)) = format.tree

    // ここからコンパイラに突入する。
    // すぐ下のコードでは一時的な val を作ってフォーマットされる式を事前に計算する。
    // 動的な Scala コードの生成に関してより詳しく知りたい場合は以下のスライドを参照:
    // http://eed3si9n.com/ja/metaprogramming-in-scala-210
    val evals = ListBuffer[ValDef]()
    def precompute(value: Tree, tpe: Type): Ident = {
      val freshName = newTermName(c.fresh("eval$"))
      evals += ValDef(Modifiers(), freshName, TypeTree(tpe), value)
      Ident(freshName)
    }

    // ここはありがちな AST に対する操作で、特に難しいことは行なっていない。
    // マクロのパラメータから構文木を抽出し、分解/解析して変換する。
    // Int と String に対応する Scala 型を手に入れている方法に注意してほしい。
    // これはコアとなるごく一部の型ではうまくいくが、
    // ほとんどの場合は自分で型を作る必要がある。
    // 型に関しての詳細も上記のスライド参照。
    val paramsStack = Stack[Tree]((params map (_.tree)): _*)
    val refs = s_format.split("(?<=%[\\w%])|(?=%[\\w%])") map {
      case "%d" => precompute(paramsStack.pop, typeOf[Int])
      case "%s" => precompute(paramsStack.pop, typeOf[String])
      case "%%" => Literal(Constant("%"))
      case part => Literal(Constant(part))
    }

    // そして最後に生成したコードの全てを Block へと組み合わせる。
    // 注目してほしいのは reify の呼び出しだ。
    // AST を手っ取り早く作成する方法を提供している。
    // reify の詳細はドキュメンテーションを参照してほしい。
    val stats = evals ++ refs.map(ref => reify(print(c.Expr[Any](ref).splice)).tree)
    c.Expr[Unit](Block(stats.toList, Literal(Constant(()))))
  }
}
