class AddColumnsTo < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :from, :string
    add_column :bookings, :to, :string
    add_column :bookings, :date, :datetime

  end
end
