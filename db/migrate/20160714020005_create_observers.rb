class CreateObservers < ActiveRecord::Migration
  def change
    create_table :observers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.boolean :is_active
    end
  end
end
