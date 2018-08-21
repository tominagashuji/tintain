class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :line, null: false, default: "", limit: 500
      t.string :name, null: false, default: "", limit: 500
      t.integer :walking_minutes, null: false, limit: 4
      t.references :property, null: false, limit: 4

      t.timestamps
    end
    add_index :nearest_stations, :name
    add_index :nearest_stations, :walking_minutes
  end
end
