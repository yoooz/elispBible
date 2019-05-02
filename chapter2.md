# まとめ(Emacs Lispの基礎) 
- シンボルとは一意的な名前であり、主に変数名や関数名として使われる
- 変数と関数は別個の名前空間を持つ
- setqで変数に代入する
- 変数には型がなく、オブジェクト自身が自分の型を知っている
- let, let*でローカル変数を定義する
- consやドット記法でコンスセルを作成する
- car, cdrでコンスセルの要素を取り出す
- コンスセルを列車のようにつなげたものがリスト
- listやリスト記法でリストを作成する
- nth, eltでリストの要素を取り出す
- vectorやベクタ記法でベクタを作成する
- equalで同値比較 eqで同一比較
- if, when, unless, condで条件分岐
- and, or, notで論理式を構成
- while, dolistでループ
- elispの正規表現は一般で使われている正規表現とは少し異なる
- string-matchで文字列と正規表現をマッチさせる
- match-stringで正規表現にマッチした文字列を得る
- M-x re-builderで正規表現作成のための強力ツール
- defunで関数定義
- lambdaで無名関数定義
- 関数定義の最初にinteractive宣言を置くとコマンドになる
- require, loadでLispファイルをロードする
- requireでロードできるようにするためには、Lispファイルにprovideを置く必要がある
- バイトコンパイルにより、elispの実行速度が向上する
- C-M-a C-M-qで関数のインデントを修正する
