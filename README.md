# README

# 概要
このアプリは、個人でも複数人でも使用可能のTo Do Listアプリです。
ビジネスシーンでの使用を想定して作りました。

# 制作背景
前職での経験から、自分以外の人間のタスクの進捗や業務内容をより明確に把握したいと思い、当アプリを作成致しました。
自分のタスクが終わった時には進捗率の低いメンバーのフォローができたり、自分が複数人でしかできないタスクにて協力を仰ぐ際には
進捗率の高い人間にフォローを依頼するなど業務を円滑に進めるためには必要だと思った経緯を経て、作成に至りました。

# 実装機能
●ToDo投稿/詳細/編集/削除/一覧表示
●ユーザー登録/詳細/一覧表示
●ログイン/ログアウト機能
●ToDo数表示/アイコン画像表示
●フラッシュメッセージの表示

# 実装予定機能
●鍵付き投稿機能
●非同期通信
●検索機能
●いいね/コメント機能


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
