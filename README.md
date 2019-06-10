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
|zipcode |integer  |null: false  |
|address |text |null: false  |
|mail |string  |null: false, unique: true  |
|phone  |integer  |null: false, unique: true  |
|profile  |text | |
|prefecture_id |integer |null: false  |
|password  |string  |null: false, unique: true  |

## itemsテーブル

|Column  |Type  |Options  |
|---|---|---|
|item_name |string  |null: false  |
|description |text  |null: false  |
|brand  |string  |  |
|size  |string  |null: false  |
|condition_id  |integer  |null: false, foreign_key: true  |
|shipping_fee_payer_id  |integer  |null: false, foreign_key: true |
|prefecture_id  |integer  |null: false, foreign_key: true  |
|shipping_days_id |integer  |null: false  |
|price |integer  |null: false, foreign_key: true  |
|owner_id  |integer  |null: false, foreign_key: true  |
|buyer_id |integer  |  foreign_key: true |
|state_id  |integer  |null: false, foreign_key: true  |
|large_class_id  |integer  |null: false, foreign_key: true  |
|middle_class_id  |integer  |null: false, foreign_key: true  |
|small_class_id  |integer  |null: false, foreign_key: true  |

## prefecturesテーブル

|Column  |Type  |Options  |
|---|---|---|
|prefecture_name  |string  |null: false, unique: true  |


## imagesテーブル

|Column  |Type  |Options  |
|---|---|---|
|item_id  |integer  |foreign_key: true  |
|image_url  |string  |null: false  |

## conditionsテーブル

|Column  |Type  |Options  |
|---|---|---|
|condition_rank |string  |null: false  |


## shipping_fee_payersテーブル

|Column  |Type  |Options  |
|---|---|---|
|payer |string  |null: false  |

## shipping_daysテーブル

|Column  |Type  |Options  |
|---|---|---|
|days |string  |null: false  |


## statesテーブル

|Column  |Type  |Options  |
|---|---|---|
|state  |string  |null: false  |

## large_classテーブル

|Column  |Type  |Options  |
|---|---|---|
|name  |string  |null: false, unique: true  |

## middle_classテーブル

|Column  |Type  |Options  |
|---|---|---|
|name |string  |null: false, unique: true  |
|large_class_id |integer  |null: false  |

## small_classテーブル

|Column  |Type  |Options  |
|---|---|---|
|name |string  |null: false, unique: true  |
|middle_class_id |integer  |null: false  |



