class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name, null: false, default: ""
      t.integer :price, null: false
      t.string :address, null: false, default: ""
      t.integer :age, null: false
      t.text :remarks, null: false, default: ""

      t.timestamps
    end
    add_index :properties, :price
    add_index :properties, :address
    add_index :properties, :age
  end
end
