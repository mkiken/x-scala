# eXtensible-Scala(X-Scala)

**Scala言語向けHygienic構文マクロシステム**




以下では，このファイル（README.md）が置かれているディレクトリをホームと呼びます．


## 他に必要なシステム

### Ypsilon (<https://code.google.com/p/ypsilon/>)

<http://www.littlewingpinball.net/mediawiki-ja/index.php/Ypsilon_Scheme_System>のインストール方法に従ってください．


### Node.js

Homebrew(<http://brew.sh/>)が入っていれば，
`brew install Node`
入っていない場合はこちらからインストールしてください → <http://nodejs.org/>


### PEG.js (<http://pegjs.majda.cz/>)

ホームで
`npm install pegjs`


### sexpression (<https://github.com/f-kubotar/sexpression>)

ホームで
`npm install sexpression`




## 動作確認

* OS              : Mac OS X 10.9.1
* Ypsilon         : Ypsilon 0.9.6-trunk/r506
* Node.js         : v0.10.24
* PEG.js          : PEG.js 0.8.0
* sexpression     : sexpression 0.0.4



## 使い方

環境変数XSCALA_HOMEにホームの絶対パスを入れてください．

例：
`export XSCALA_HOME=/Users/USER_NAME/Desktop/x-scala`

scalaディレクトリで

`./convert.sh [ファイル名].scala`

とコマンドを呼ぶことで[ファイル名]ディレクトリが作られ，その下にマクロ展開の結果とその中間ファイルが生成されます．

* 1_midtree.json:マクロ定義のパターン構文木
* 2_macroParser.pegjs:マクロ定義のパターンのPEG
* 3_syncedMacroParser.pegjs:X-ScalaのPEG
* 4_tree.json:X-Scalaの構文木
* 5_sform.scm:X-Scalaから変換したS式
* 6_expanded.scm:マクロ展開されたS式
* 7_expanded.scala:S式から逆変換されたScalaプログラム



macro_testディレクトリ以下にサンプルがあります．

例：
macro_testディレクトリで

`../convert.sh hygienic.scala`

でhygienicディレクトリが作られ，マクロ展開を行ったプログラムが生成されます．



2014/02/09
