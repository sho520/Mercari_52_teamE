class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :brand
      t.string :size, null: false
      t.integer :condition_id, null: false, foreign_key: true
      t.integer :shipping_fee_payer_id, null: false, foreign_key: true
      t.integer :prefecture_id, null: false, foreign_key: true
      t.integer :shipping_days_id, null: false, foreign_key: true
      t.integer :price, null: false
      t.integer :owner_id, null: false, foreign_key: true
      t.integer :buyer_id, foreign_key: true
      t.integer :state_id, null: false, foreign_key: true
      t.integer :large_class_id, null: false, foreign_key: true
      t.integer :middle_class_id, null: false, foreign_key: true
      t.integer :small_class_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
