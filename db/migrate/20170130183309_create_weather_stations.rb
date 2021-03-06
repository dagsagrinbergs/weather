class CreateWeatherStations < ActiveRecord::Migration[5.0]
  def change
    create_table :weather_stations do |t|
      t.string :station_id
      t.float :latitude
      t.float :longitude
      t.float :elevation
      t.string :state
      t.string :name
      t.string :gsn_flag
      t.string :hcn_flag
      t.string :wmo_id

      t.timestamps
    end
    add_index :weather_stations, :station_id
  end
end
