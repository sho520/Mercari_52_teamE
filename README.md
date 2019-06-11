# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

ruby 2.5.1

* Rails version

rails 5.2.3

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# DB設計

## usersテーブル

|Column  |Type  |Options  |
|---|---|---|
|name |string  |null: false  |
|kana|string  |null: false  |
|nickname |string |null: false, unique: true  |
|birthday |date  |null: false  |
|zipcode |string  |null: false  |
|address |text |null: false  |
|mail |string  |null: false, unique: true  |
|phone  |string  |null: false, unique: true  |
|profile  |text | |
|prefecture_id |integer |null: false, foreign_key: true  |
|password  |string  |null: false, unique: true  |

### Association

- has_many :items
- belongs_to :prefecture

## itemsテーブル

|Column  |Type  |Options  |
|---|---|---|
|name |string  |null: false  |
|description |text  |null: false  |
|brand  |string  |  |
|size  |string  |null: false  |
|condition_id  |integer  |null: false, foreign_key: true  |
|shipping_fee_payer_id  |integer  |null: false, foreign_key: true |
|prefecture_id  |integer  |null: false, foreign_key: true  |
|shipping_days_id |integer  |null: false, foreign_key: true  |
|price |integer  |null: false|
|owner_id  |integer  |null: false, foreign_key: true  |
|buyer_id |integer  |  foreign_key: true |
|state_id  |integer  |null: false, foreign_key: true  |
|large_class_id  |integer  |null: false, foreign_key: true  |
|middle_class_id  |integer  |null: false, foreign_key: true  |
|small_class_id  |integer  |null: false, foreign_key: true  |

### Association

- belongs_to :prefecture
- belongs_to :state
- belongs_to :condition
- belongs_to :shipping_fee_payer
- belongs_to :shipping_day
- belongs_to :large_class
- belongs_to :middle_class
- belongs_to :small_class
- has_many :images
- belongs_to :owner, class_name: "User"
- belongs_to :buyer, class_name: "User"


## imagesテーブル

|Column  |Type  |Options  |
|---|---|---|
|item_id  |integer  |foreign_key: true  |
|image_url  |string  |null: false  |

### Association

- belongs_to :item

## conditionsテーブル

|Column  |Type  |Options  |
|---|---|---|
|condition_rank |string  |null: false  |

### Association

- has_many :items

## shipping_fee_payersテーブル

|Column  |Type  |Options  |
|---|---|---|
|payer |string  |null: false  |

### Association

- has_many :items

## shipping_daysテーブル

|Column  |Type  |Options  |
|---|---|---|
|days |string  |null: false  |

### Association

- has_many :items

## statesテーブル

|Column  |Type  |Options  |
|---|---|---|
|state  |string  |null: false  |

### Association

- has_many :items

## large_classesテーブル

|Column  |Type  |Options  |
|---|---|---|
|name  |string  |null: false, unique: true  |

### Association

- has_many :items
-  has_many :middle_classes


## middle_classesテーブル

|Column  |Type  |Options  |
|---|---|---|
|name |string  |null: false, unique: true  |
|large_class_id |integer  |null: false  |

### Association

- has_many :items
- belongs_to :large_class
- has_many :small_classes

## small_classesテーブル

|Column  |Type  |Options  |
|---|---|---|
|name |string  |null: false, unique: true  |
|middle_class_id |integer  |null: false  |

### Association

- has_many :items
- belongs_to :middle_class

## 備考

都道府県データはgemのactive_hashを利用してPrefectureModelを作成して管理する。
モデル間のアソシエーションは以下の通り。

- has_many :users
- has_many :items