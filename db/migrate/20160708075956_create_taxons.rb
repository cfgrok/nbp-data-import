class CreateTaxons < ActiveRecord::Migration
  def change
    create_table :taxons do |t|
      t.string :common_name
      t.string :banding_code
    end
  end
end
