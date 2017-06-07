class CreateAdditionalObservations < ActiveRecord::Migration
  def change
    create_table :additional_observations do |t|
      t.references :survey, index: true, foreign_key: { name: 'observations_survey_id_fkey' }
      t.references :taxon, index: true, foreign_key: { name: 'observations_taxon_id_fkey' }
      t.boolean :is_rare
      t.string :notes
    end
  end
end
