class AddRulesToComment < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :item_id, :integer, {foreign_key: true}
    change_column :comments, :user_id, :integer, {foreign_key: true}
  end
end
