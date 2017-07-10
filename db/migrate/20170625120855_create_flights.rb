class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :start_place, foreign_key: true
      t.integer :finish_place, foreign_key: true
      t.datetime :start_time
      t.string :duration

      t.timestamps
    end
  end
end
