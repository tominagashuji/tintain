このリポジトリは、技術力テスト用のリポジトリを、芝田が取り組んだものになります。

（本家様のURL https://github.com/mofmof/dev-exam ）

## 開発したアプリケーションの概要
賃貸情報物件情報画面のCRUDを実装致しました。既にrails newしただけのアプリケーションのソースコードから、本家様のREADMEに書かれていた要件仕様、キャプチャにできる限り忠実なアプリケーションを作成しました。

## 開発環境

### 言語・ミドルウェアなど
- Ruby 2.3.1
- Ruby on Rails 5.0.0
- Sqlite

### セットアップ

- git clone git@github.com:shibatadaiki/tintain.git
- cd tintain
- bundle install --path vendor/bundler
- rails db:create db:migrate
- rails s

### ローカル環境でseedデータが欲しい場合は以下を実行

- bundle exec rake db:seed_fu FIXTURE_PATH=./db/fixtures/develop
