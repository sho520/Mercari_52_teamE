class AddColumnToItem < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :size_id, :integer, {foreign_key: true}
  end
end
