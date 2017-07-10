class AddTimeToBookings < ActiveRecord::Migration[5.0]
  def change

  	add_column :bookings, :time, :datetime
  end
end
