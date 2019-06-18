class DeleteMageFromImage < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :mage_url
    add_column :images, :image_url, :string
  end
end
