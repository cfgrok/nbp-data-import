class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      #t.references :year, index: true, foreign_key: { name: 'surveys_year_id_fkey' }
      #t.references :month, index: true, foreign_key: { name: 'surveys_month_id_fkey' }
      t.references :loop, index: true, foreign_key: { name: 'surveys_loop_id_fkey' }
      t.references :precipitation, index: true, foreign_key: { name: 'surveys_precipitation_id_fkey' }
      t.references :weather, index: true, foreign_key: { name: 'surveys_weather_id_fkey' }
      t.references :wind, index: true, foreign_key: { name: 'surveys_wind_id_fkey' }
      t.integer :year
      t.integer :month
      t.date :survey_date
      t.time :start_time
      t.time :end_time
      t.integer :walkers_count
      t.integer :dogs_count
      t.integer :off_leash_dogs_count
      t.integer :other_count
      t.string :notes
      t.integer :legacy_id
    end
  end
end
