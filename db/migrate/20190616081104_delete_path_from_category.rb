class DeletePathFromCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :path
  end
end
