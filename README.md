# アプリケーション名

Voca Tech

※ VScodeで開発する際は「vocabulary-words」という名前を使っています。

# アプリケーション概要

このアプリケーションでは以下の２点ができます。

- プログラミング学習に特化した単語帳機能搭載
- 日々の学習記録をまとめておけるレポート機能搭載

# 本番環境

本番環境URL https://vocabulary-words.herokuapp.com/

ログイン情報(テスト用)
 ユーザー１
  - Eメール test1@test.com
  - パスワード 111qqq

ユーザー2
 - Eメール test2@test.com
 - パスワード 222www

# 利用方法

- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。

  ○ ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
- 同時に複数の方がログインしている場合に、ログインできない可能性があります。
- テストアカウントでログイン→トップページから単語帳記述及びレポート作成を行なってください。
- 確認後、ログアウト処理をお願いします。

# 解決したい課題
このアプリはプログラミング未経験からエンジニアを目指す人ユーザーとして想定しています。

課題としては以下の通りです。
- 初めてプログラミングを学習すると今まで触れてこなかった膨大な量の専門用語を目の当たりにする
- 復習するとき、ページ内の復習したい箇所を探すのに時間がかかる
- 復習の質を上げて知識の定着を図りたい
- 通勤時間等の隙間時間にプログラミングの学習をしたい
- アプリを開発すると必ずエラーに遭遇する。しかし経験したエラーを忘れてしまう

# 各機能の説明

## ユーザー管理機能
ユーザー管理機能を実装することで自分の投稿した単語リストを他のユーザーに見られることできます。

他のユーザーの投稿を見ることで自分のモチベーションを上げ、他のユーザーから見られることで緊張感を持って取り組むことができます。

### 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/00dd2eee27ec99ba5c68e6a5b6924439.jpg)](https://gyazo.com/00dd2eee27ec99ba5c68e6a5b6924439)

トップページ右上から新規登録ができます。

[![Image from Gyazo](https://i.gyazo.com/88e39c7d1e81e82e5ae5826f689bc4bf.jpg)](https://gyazo.com/88e39c7d1e81e82e5ae5826f689bc4bf)

必要事項を記入します

### トップページ下部

[![Image from Gyazo](https://i.gyazo.com/8c6f4b2cddf5033866457877193df616.jpg)](https://gyazo.com/8c6f4b2cddf5033866457877193df616)

新規登録が完了するとトップページ下に登録時の画像とニックネームが表示されます。

### 一覧表示ページ

[![Image from Gyazo](https://i.gyazo.com/dc07f650dd56d0314e7648636f8b5876.jpg)](https://gyazo.com/dc07f650dd56d0314e7648636f8b5876)

自分のニックネーム欄をクリックすると自分の単語リストが表示されます。

## 単語投稿機能
単語を投稿できます。投稿後、自分だけの単語リストを閲覧することができます。苦手なプログラミング専門用語
を一つのページにまとめられます。

### 投稿画面


[![Image from Gyazo](https://i.gyazo.com/7d3d545a82eded43a68bcad3c84e6014.jpg)](https://gyazo.com/7d3d545a82eded43a68bcad3c84e6014)

キーワード、ジャンル、音声、説明文を投稿できます。

ジャンルはプログラミング言語を選べます。

自分の録音した音声を投稿することで、聴覚を利用して復習の質を上げることが狙いです。

説明文の記述欄はMarkdown記法を用いることができます。

### 一覧表示
https://user-images.githubusercontent.com/87416273/132152172-006961ee-da61-4f6e-9429-62a6657493f4.mp4

投稿後は一覧ページにて表示されます。カーソルを説明文に当てることで記述内容を見ることができます。

### 編集機能
https://user-images.githubusercontent.com/87416273/132152371-6c33eb9d-2e78-4819-9b53-f9ec77587be3.mp4

一覧ページから編集ページに遷移できます。

### 削除機能
https://user-images.githubusercontent.com/87416273/132152406-3155f37b-85cf-44be-abaa-32a74d4f8ee6.mp4

一覧ページから削除することができます

### 定着度確認機能
https://user-images.githubusercontent.com/87416273/132152425-27fc35cc-fed2-40de-a4ba-c30027f54c5f.mp4

自分の定着度合いに対し、◯×を切り替えられます。

## レポートルーム機能

開発時に経験したエラー等、日々の学習を記録しておくためにレポート機能を実装しました。

### トップページ中段

[![Image from Gyazo](https://i.gyazo.com/39cb6111117c930789e46af5a527ce83.jpg)](https://gyazo.com/39cb6111117c930789e46af5a527ce83)

トップページ中段に新規レポート作成ボタンを配置しました。

### 新規作成

[![Image from Gyazo](https://i.gyazo.com/fcf4792800925901e760d213c6d19751.jpg)](https://gyazo.com/fcf4792800925901e760d213c6d19751)

ルームを記述できます。

### トップページに反映

[![Image from Gyazo](https://i.gyazo.com/0d048368b41b33ce3858e0c6107eb768.png)](https://gyazo.com/0d048368b41b33ce3858e0c6107eb768)

新規作成後、トップページ下段にレポート名が表示されます。

### レポート詳細ページ

https://user-images.githubusercontent.com/87416273/132156170-c2d4b71e-0e32-424e-8865-a091df220d22.mp4

コメントと画像を投稿することができます。

##  レスポンシブデザイン機能

https://user-images.githubusercontent.com/87416273/132156682-8a0f7c43-6385-47d7-9fc3-454dc4b0df80.mp4

スマホでも閲覧できるように画面幅に応じて文字の大きさを変えました。

# 使用環境

## バックエンド
Ruby, Ruby on Rails

## フロントエンド
HTML, css

## データベース
MySQL, SequelPro

## インフラ
AWS(EC2), CarrierWave

## ソース管理
GitHub, GitHubDesktop

## テスト
RSpec

## エディタ
VScode


# DB設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| first_name         | string  | null: false               |
| last_name          | string  | null: false               |
| kana_first_name    | string  | null: false               |
| kana_last_name     | string  | null: false               |
| birthday           | date    | null: false               |

### Association

- has_many :keywords
- has_many :rooms
- has_many :messages
- has_many :tests

## keywords テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| word        | string     | null: false                    |
| genre_id    | integer    | null: false                    |
| instruction | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :tests

## tests テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| keyword | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :keyword


## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- belongs  :users
- has_many :messages

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

# 今後実装したい機能

同じ言語同士、同じ学習サイト、同じプログラミングスクールで学習している同士を結びつけるチャットルーム機能を実装し、遭遇したエラーの共有などができるようにしたいです。
