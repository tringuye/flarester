class CreateTimeIntervals < ActiveRecord::Migration[5.2]
  def change
    create_table :time_intervals do |t|
      t.integer :interval

      t.timestamps
    end
  end
end
