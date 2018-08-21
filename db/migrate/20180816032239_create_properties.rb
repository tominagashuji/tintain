class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name, null: false, default: "", limit: 500
      t.integer :rent, null: false, limit: 4
      t.string :address, null: false, default: "", limit: 500
      t.integer :age, null: false, limit: 4
      t.text :remarks, null: false, default: "", limit: 1000

      t.timestamps
    end
    add_index :properties, :rent
    add_index :properties, :address
    add_index :properties, :age
  end
end
