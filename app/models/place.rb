class Place < ApplicationRecord
has_many :departing_flights,foreign_key: 'start_place', class_name: 'Flight'  
has_many :arriving_flights, foreign_key: 'finish_place', class_name: 'Flight' 

end
