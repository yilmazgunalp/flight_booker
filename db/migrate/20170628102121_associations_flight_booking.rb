class AssociationsFlightBooking < ActiveRecord::Migration[5.0]
  def change
	add_column :bookings, :flight_id, :integer, foreign_key: true
  	
  end
end
