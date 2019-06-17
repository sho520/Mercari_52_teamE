class AddShippingdayToItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :shipping_days_id
    add_column :items, :shipping_day_id, :integer
    change_column :items, :shipping_day_id, :integer, {foreign_key: true}
  end
end
