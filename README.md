# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, default: ""|
| encrypted_password | string | null: false, default: ""|
| name                           | string | null: false, default: ""|
| profile                       | string | null: false|
| occupation         | string | null: false|
| position           | string | null: false|

### Association
- has_many :prototypes
- has_many :comments


## prototypes テーブル

| Column       | Type   | Options      |
| —————— | ------ | ----------- |
| title              | string | null: false   |
| catch_copy | text    | null: false   |
| concept       | text    | null: false   |


### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column | Type           | Options                                       |
| ———— | —————— | ------------------------------ |
| content | text             | null: false                                    |
| user       | references | null: false, foreign_key: true     |
| room      | references | null: false, foreign_key: true     |
  
### Association

- belongs_to :user
- belongs_to :prototype