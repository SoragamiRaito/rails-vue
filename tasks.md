# build-tasks

1. コマンド実行

`docker-compose build`

1. コマンド実行

`docker-compose run --rm backend rails new . -f -B -d mysql --api --skip-test --skip-turbolinks`

1. コマンド実行

```shell
docker-compose build
docker-compose run --rm backend rails db:create
```

1. コマンド実行、vue プロジェクト作成

`docker-compose run --rm frontend npm init vite@latest`
npm init をシェルスクリプトだけで終わらせる方法を考える。
もしくは対話的にプロジェクト作成はがんばってもらうか？
それもありかも。

1. @frontend/Dockerfile 編集

コメントアウトされている追加部分をコメントアウト解除

1. 立ち上げ

`docker-compose up`

1. 接続テスト

rails のページ`localhost:3000`
vue のページ`localhost:8080`
