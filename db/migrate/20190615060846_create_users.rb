class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :kana, null: false
      t.string :nickname, null: false, unique: true
      t.date :birthday, null: false
      t.string :zipcode, null: false
      t.text :address, null: false
      t.string :mail, null: false, unique: true
      t.string :phone, null: false, unique: true
      t.text :profile
      t.integer :prefecture_id, null: false, foreign_key: true
      t.string :password, null: false, unique: true
      t.text :credit
      t.timestamps null: true
      t.timestamps
    end
  end
end
