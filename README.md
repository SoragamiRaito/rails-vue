# rails-vue

概要：web アプリケーション用の docker コンテナです。
フロントエンドを vue で、バックエンドを rails で開発する環境になっています。

## 使い方

クローンしたら`sh ./setup.sh`を実行。
以上！！

### ポート
- vueのポート：`5173`
- railsのポート：`3000`

## チートシート

### docker-compose

- コンテナ起動(-dオプションでバックグラウンドで起動、ターミナルを閉じても起動し続ける):  
    `docker-compose up -d`
- コンテナ停止:  
    `docker-compose down`
- コンテナの起動状況確認:  
    `docker-compose ps`
- ログの確認:  
    `docker-compose lsgs`
- コンテナに接続:  
    `docker-compose exec [コンテナにつけた名前] bash`
- サーバーに出力されたログをリアルタイムで確認する:  
    `docker-compose logs -ft`
- コンテナに入らずにvueを起動する:  
    `docker-compose exec app npm run serve`

### docker

- イメージ削除:  
    `docker rmi [イメージID]`
- イメージ一覧:  
    `docker images -a`
- 起動中のコンテナ一覧:  
    `docker ps -a`
- コンテナごとのリソース使用状況の確認:  
    `docker stats --no-stream`
- コンテナ削除:  
    `docker rm [コンテナID]`
- すべてのコンテナ削除:  
    `docker rm $(docker ps -a -q)`
- コンテナプロセスを停止:  
    `docker stop [コンテナID]`
- インタラクティブモードでコンテナ起動:  
    `docker container run -it`
- 起動中のコンテナに入る:  
    `docker exec -it [コンテナID] /bin/bash`
