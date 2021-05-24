まだ未完成です

# RailsをDockerで動かすためのMYフォーマット
piyoraik さんのを参考に改造しました。  
バイトのレビューなどのしやすさを優先して作っているのでご了承ください。

## デモ
![]()

## 使い方
### 1. クローンをする
```bash
git clone https://github.com/HidakaRintaro/rails-docker-format.git フォルダ名
```

### 2. Railsプロジェクトを作成  
```bash
# クローンしたフォルダに移動
cd フォルダ名

# railsプロジェクトを作成
```

### 3. プロジェクト名を指定してコマンド実行  
  Dockerfileとdocker-compose.yamlの``xXxXx``を``プロジェクト名``に変更。  
  MakefileのPROJECT変数の``yYyYy``を``プロジェクト名``に変更。  
  プロジェクト名とフォルダ名が違う場合はフォルダ名を指定。
```bash
make setup n=プロジェクト名
```

### 4. Dockerを起動  
  Dockerfileのコメントを外せば``bundle install``と``rails db:migrate``も実行可能
```bash
make start
```

## その他Makefileの内容
```bash
# 起動中のDockerをdownして再度起動する
make restart

# Docker compose build
make build

# Docker compose up -d
make up

# docker compose down
make down

# docker exec -it コンテナ名 bash
make exec

```