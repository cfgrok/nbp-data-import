class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.references :station, index: true, foreign_key: { name: 'observations_station_id_fkey' }
      t.references :taxon, index: true, foreign_key: { name: 'observations_taxon_id_fkey' }
      t.references :nest_code, index: true, foreign_key: { name: 'observations_nest_code_id_fkey' }
      t.integer :seen_count
      t.integer :heard_count
      t.integer :flyover_count
      t.integer :legacy_id
    end
  end
end
