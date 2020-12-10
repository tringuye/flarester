class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.references :city, foreign_key: true
      t.references :category, foreign_key: true
      
      t.timestamps
    end
  end
end
