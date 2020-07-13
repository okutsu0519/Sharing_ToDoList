# README

# アプリケーション概要
個人でも複数人でも使用可能のToDoListです。
ビジネスシーンでの使用を想定して作りました。

# 機能一覧
●ユーザー登録、ログイン機能
●ToDo投稿、編集、削除機能


## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|username|string|null: false, unique: true, index|
|profile|text|null: false|
|profile_image_id|string|null: false|
|email|string|null: false|
|reset_password_token|string|null: false|
|reset_password_sent_at|datetime|null: false|
|remember_created_at|datetime|null: false|
|created_at|string|null: false|
|updated_at|string|null: false|
### Association
- has_many :todos


## ToDosテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|title|string|null: false|
|body|text|null: false|
|image_id|integer|null: false|
|user_id|integer|foreign_key: true, null: false|
### Association
- belongs_to :user
