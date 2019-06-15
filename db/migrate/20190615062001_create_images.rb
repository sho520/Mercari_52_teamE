class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :item_id, foreign_key: true
      t.string :mage_url, null: false
      t.timestamps
    end
  end
end
