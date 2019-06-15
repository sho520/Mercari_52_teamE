class CreateMiddleClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :middle_classes do |t|
      t.string :name, null: false, unique: true
      t.integer :large_class_id, null: false

      t.timestamps
    end
  end
end
