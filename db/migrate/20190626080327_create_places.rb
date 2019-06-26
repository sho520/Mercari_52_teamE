class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.integer :prefecture_code
      t.integer :user_id
      t.integer :item_id
    end
  end
end
