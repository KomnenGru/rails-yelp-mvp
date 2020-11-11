puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "005487533", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "73284723794", category: "italian" }
ola =  { name: "Ola", address: "73 Ballanstrasse, Munich", phone_number: "234324324", category: "japanese" }
cut_what =  { name: "Cut What", address: "Elisabeth Street 4, Paris", phone_number: "324234324", category: "french" }
jumbo =  { name: "Jumbo", address: "St Moritz Street, Belgrade", phone_number: "423424", category: "belgian" }

[ dishoom, pizza_east, ola, cut_what, jumbo ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
