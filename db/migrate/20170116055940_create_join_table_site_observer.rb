class CreateJoinTableSiteObserver < ActiveRecord::Migration
  def change
    create_join_table :sites, :observers do |t|
      t.references :site, index: true, null: false, foreign_key: { name: 'sites_observers_site_id_fkey' }
      t.references :observer, index: true, null: false, foreign_key: { name: 'sites_observers_observer_id_fkey' }
      #t.index [:site_id, :observer_id], type: 'pkey'
      t.index [:observer_id, :site_id]
    end

    execute 'ALTER TABLE observers_sites ADD PRIMARY KEY (site_id, observer_id)'
  end
end
