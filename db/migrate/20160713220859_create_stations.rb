class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.references :survey, index: true, foreign_key: { name: 'stations_survey_id_fkey' }
      t.references :weather, index: true, foreign_key: { name: 'stations_weather_id_fkey' }
      t.references :wind, index: true, foreign_key: { name: 'stations_wind_id_fkey' }
      t.integer :number
      t.time :start_time
      t.integer :legacy_id
      t.date :date_entered
      t.string :notes
      t.boolean :no_birds_seen
      t.boolean :pishing
    end
  end
end
