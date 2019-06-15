class CreateSmallClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :small_classes do |t|
      t.string :name, null: false, unique: true
      t.integer :middle_class_id, null: false
      t.timestamps
    end
  end
end
