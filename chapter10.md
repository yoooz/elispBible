## まとめ(モード作成)
- メジャーモードを作成するには`define-derived-mode`, `define-generic-mode`を使う
- ファイル名とメジャーモードを関連付けるには`auto-mode-alist`を設定する
- font-lockの設定を追加するには`font-lock-add-keywords`を使う
- 明示的にfont-lockを反映させるには`font-lock-fontify-buffer`を使う
- font-lockの正規表現を作成するにあたって`M-x re-builder`はとても強力なツールである
- マイナーモードを定義するには`define-minor-mode`を使う
- 関数、変数の別名を定義するには`defalias`, `defvaralias`を使う
