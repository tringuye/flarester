class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :notes
      t.string :event_time
      t.references :city, foreign_key: true
      t.references :location, foreign_key: true
      t.references :category, foreign_key: true
      t.references :time_interval, foreign_key: true

      t.timestamps
    end
  end
end
