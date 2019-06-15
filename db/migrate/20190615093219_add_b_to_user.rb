class AddBToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :family_name, :string, {null: true}
    change_column :users, :first_name, :string, {null: true}
    change_column :users, :family_name_kana, :string, {null: true}
    change_column :users, :first_name_kana, :string, {null: true}
    change_column :users, :nickname, :string, {null: true}
    change_column :users, :birthday, :date, {null: true}
    change_column :users, :zipcode, :string, {null: true}
    change_column :users, :address, :text, {null: true}
    change_column :users, :mail, :string, {null: true}
    change_column :users, :phone, :string, {null: true}
    change_column :users, :prefecture_id, :integer, {null: true}
    change_column :users, :password, :string, {null: true}
  end
end
