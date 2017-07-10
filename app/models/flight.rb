class Flight < ApplicationRecord

has_many :bookings


belongs_to :from_airport, class_name: 'Place', foreign_key: 'start_place'
belongs_to :to_airport, class_name: 'Place', foreign_key: 'finish_place'

def event_date_formatted
    start_time.strftime("%m/%d/%Y")
  end

	


def self.search flight,num

results = Flight.where("start_place = ? and  finish_place = ? and start_time between ? and ?", 
	flight[:from_airport], flight[:to_airport], Time.parse(flight[:start_time]).beginning_of_day, 
	Time.parse(flight[:start_time]).end_of_day) 


end


end
