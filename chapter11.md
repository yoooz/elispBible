## まとめ(外部プログラムとの協調)
- シェルコマンドを実行するには`shell-command`, `shell-command-to-string`, `shell-command-on-region`, `async-shell-command`を使う
- シェルに入力を渡す場合は`shell-quote-argument`でメタ文字をエスケープする必要がある
- 環境変数の値にアクセスするには`getenv`, `setenv`を使う
- 外部プログラムの存在確認をし、存在する場合にフルパスを得るには`executable-find`を使う
- シェルを経由する場合は環境変数`PATH`からプログラムが探索される
- 非同期プロセスを作成するには`start-process`, `start-process-shell-command`を使う
- 終了時に処理を行わせるには`set-process-sentinel`を使う
- プロセスに文字列を送信するには`process-send-string`を使う
- eshellはelispで書かれた拡張性の高いシェルである
