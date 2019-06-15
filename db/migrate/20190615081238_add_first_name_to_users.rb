class AddFirstNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :family_name, :string
    change_column :users, :family_name, :string, {null: false}
    add_column :users, :family_name_kana, :string
    change_column :users, :family_name_kana, :string, {null: false}
    add_column :users, :first_name, :string
    change_column :users, :first_name, :string, {null: false}
    add_column :users, :first_name_kana, :string
    change_column :users, :first_name_kana, :string, {null: false}
  end
end
