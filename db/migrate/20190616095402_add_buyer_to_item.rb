class AddBuyerToItem < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :buyer_id, :integer, {null: true}
  end
end
