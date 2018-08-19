class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :line, null: false, default: ""
      t.string :name, null: false, default: ""
      t.integer :walking_minutes, null: false
      t.references :property

      t.timestamps
    end
    add_index :nearest_stations, :name
    add_index :nearest_stations, :walking_minutes
  end
end
