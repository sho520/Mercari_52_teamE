class AddIndexToCategory < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :path, :string, {index: true}
  end
end
