def delete_all
	ActiveRecord::Base.connection.tables.each  do |table|
		next if table == "schema_migrations"
		next if table == "ar_internal_metadata"
		table.classify.constantize.delete_all
	end	
end

delete_all 



["SFO","NYC","IST","SYD","MEL","BNE","ADL"].each do |pl|

Place.create(alias: pl)


end	

 

 
 for i in(1..3) do
3.times do
 	ports = Place.all.sample(2)
 	start,finish = ports[0], ports[1]
  
Flight.create(from_airport: start, to_airport: finish, start_time: Time.now + i.days, 
	duration: "2 hrs", flightno: "#{start.alias[0..1]}#{i*2+300}#{finish.alias[0..1]}" )
Flight.create(from_airport: start, to_airport: finish, start_time: Time.now + i.days + 3.hours, 
	duration: "2 hrs", flightno: "#{start.alias[0..1]}#{i*2+300}#{finish.alias[0..1]}" )
# Flight.create(from_airport: finish, to_airport: start, 
# 	start_time: Time.now + i.days, duration: "2 hrs",flightno: "#{finish.alias[0..1]}-#{i*2+3}-#{start.alias[0..1]}" )

end
 end	
























