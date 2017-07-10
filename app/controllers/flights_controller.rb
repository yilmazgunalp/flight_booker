class FlightsController < ApplicationController
  def index
  @flights = Flight.all
  @from_options= (@flights.map {|fl|  fl.from_airport}).uniq
  @to_options = (@flights.map {|fl| fl.to_airport}).uniq
@dates = (@flights.map{|fl| [fl.start_time.to_date, fl.start_time]}).uniq {|e| e[0]}	  
	 
 if params[:flight]
  
@results =  Flight.search params[:flight], params[:num_passengers]

if @results.empty?



@message = "No flight found try another date!"	
	
end

end


  end






end
