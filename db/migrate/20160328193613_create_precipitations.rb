class CreatePrecipitations < ActiveRecord::Migration
  def change
    create_table :precipitations do |t|
      t.string :name
      t.integer :sort_order
    end
  end
end
