class AddColumnToItem2 < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :name, :string
    change_column :items, :description, :text 
    change_column :items, :brand, :string 
    change_column :items, :condition_id, :integer, {foreign_key: true}
    change_column :items, :shipping_fee_payer_id, :integer, {foreign_key: true}
    change_column :items, :prefecture_id, :integer, {foreign_key: true}
    change_column :items, :price, :integer
    change_column :items, :owner_id, :integer, {foreign_key: true}
    change_column :items, :buyer_id, :integer, {foreign_key: true}
    change_column :items, :state_id, :integer, {foreign_key: true}
    change_column :items, :large_class_id, :integer, {foreign_key: true}
    change_column :items, :middle_class_id, :integer, {foreign_key: true}
    change_column :items, :small_class_id, :integer, {foreign_key: true}
    change_column :items, :created_at, :datetime 
    change_column :items, :updated_at, :datetime
    change_column :items, :category_id, :integer, {foreign_key: true}
    change_column :items, :shipping_day_id, :integer, {foreign_key: true}
    change_column :items, :delivery_way_id, :integer, {foreign_key: true}
    change_column :items, :size_id, :integer, {foreign_key: true}
  end
end
