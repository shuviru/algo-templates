# Dockerの準備
`makefile`で以下のコマンドが設定されている
`up`：コンテナを立ち上げる
`down`：コンテナを落とす
`exec`：コンテナ内のシェルに移動

# c++の準備
`makefile`で以下のコマンドが設定されている
`setup DIR=DIRECTORY_NAME`:DIRECTORY_NAMEのディレクトリを作成し、template.ccをもとにA~Exまでのファイルが生成される。またコンパイル&実行をまとめたmakefileがそのディレクトリに生成される

`make A`: Aをコンパイルし実行するコマンド
