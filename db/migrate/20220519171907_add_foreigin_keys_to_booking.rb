class AddForeiginKeysToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :passenger_id, :integer
    add_column :bookings, :flight_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
