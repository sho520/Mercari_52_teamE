class CreateShippingFeePayers < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_fee_payers do |t|
      t.string :payer, null: false
      t.timestamps
    end
  end
end
