class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.boolean :paid, :default => false
      t.string :token
      t.integer :price

      t.timestamps
    end
  end
end
