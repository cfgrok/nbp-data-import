class CreateLoops < ActiveRecord::Migration
  def change
    create_table :loops do |t|
      t.string :name
      t.references :site, index: true, foreign_key: { name: 'loops_site_id_fkey' }
      t.boolean :is_active
      t.integer :station_count
    end
  end
end
