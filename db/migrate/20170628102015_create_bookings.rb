class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :booking_no

      t.timestamps
    end
  end
end
