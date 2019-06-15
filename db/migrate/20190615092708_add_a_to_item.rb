class AddAToItem < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :name, :string, {null: true}
    change_column :items, :description, :text, {null: true}
    change_column :items, :size, :string, {null: true}
    change_column :items, :condition_id, :integer, {null: true}
    change_column :items, :shipping_fee_payer_id, :integer, {null: true}
    change_column :items, :prefecture_id, :integer, {null: true}
    change_column :items, :shipping_days_id, :integer, {null: true}
    change_column :items, :price, :integer, {null: true}
    change_column :items, :owner_id, :integer, {null: true}
    change_column :items, :state_id, :integer, {null: true}
    change_column :items, :large_class_id, :integer, {null: true}
    change_column :items, :middle_class_id, :integer, {null: true}
    change_column :items, :small_class_id, :integer, {null: true}
  end
end
