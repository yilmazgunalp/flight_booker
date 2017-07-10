class BookingsController < ApplicationController
  def new
  	  	@pax = params[:pax].to_i

  	    @booking = Booking.new
    @flight = Flight.find(params[:choice])
@pax.times {@booking.passengers.build}    
  	
  	
  end

  def create

  p "******"
@booking = Booking.new(booking_params)
@booking.flight = Flight.find(params[:booking][:flight_id])
@booking.save!
  redirect_to @booking

  end

  def show
@booking = Booking.find(params[:id])
  end

  private
def booking_params 
params.require(:booking).permit(:date,:from,:to,:time,
  passengers_attributes: [:name,:email])
  
  end	

end
