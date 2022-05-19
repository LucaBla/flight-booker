class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.date :date
      t.time :duration
      t.integer :depature_airport_id
      t.integer :arrival_airport_id

      t.timestamps
    end
  end
end
