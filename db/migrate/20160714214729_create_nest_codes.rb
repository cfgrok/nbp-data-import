class CreateNestCodes < ActiveRecord::Migration
  def change
    create_table :nest_codes do |t|
      t.string :name
      t.string :abbreviation
      t.integer :code
    end
  end
end
