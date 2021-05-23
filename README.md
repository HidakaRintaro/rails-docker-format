# RailsをDockerで動かすためのMYフォーマット
piyoraik さんのを参考に改造しました。  
バイトのレビューなどのしやすさを優先して作っているのでご了承ください。

## デモ
![]()

## 使い方
1. gitクローンをする
```bash
git clone https://github.com/HidakaRintaro/rails-docker-format.git
```

2. railsプロジェクトを作成  
```bash
# クローンしたフォルダに移動
cd rails-docker-format

# railsプロジェクトを作成
```

3. プロジェクト名を指定してコマンド実行  
  Dockerfileとdocker-compose.yamlの``xXxXx``を``プロジェクト名``に変更。  
  プロジェクト名とフォルダ名が違う場合はフォルダ名を指定してください。
```bash
make name-set n=プロジェクト名
```

4. Dockerを起動
```bash
make 
```