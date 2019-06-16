class AddCategoryToItem1 < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :category_id, :integer, {foreign_key: true}
  end
end
