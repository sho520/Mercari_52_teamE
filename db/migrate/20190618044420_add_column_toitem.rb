class AddColumnToitem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :delivery_way_id, :integer
    change_column :items, :delivery_way_id, :integer, {foreign_key: true}
  end
end
