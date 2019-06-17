class RemoveZipcodeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :zipcode, :string
    remove_column :users, :address, :text
    remove_column :users, :prefecture_id, :integer
  end
end
