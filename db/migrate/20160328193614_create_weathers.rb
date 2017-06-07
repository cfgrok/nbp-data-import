class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :name
      t.string :code
      t.integer :sort_order
    end
  end
end
