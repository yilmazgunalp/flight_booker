class AddFlightnoToFlights < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :flightno, :string
  end
end
