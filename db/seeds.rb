# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hotel.destroy_all

puts "Creating a new hotel"
  hotel_1 = Hotel.new(name: 'Mon hotel', address: '55 Quai des Grands Augustins', city: 'Paris')
  hotel_1.save!
puts "Created a new hotel"

puts "Creating new rooms"
  room_1 = Room.new(hotel: hotel_1, room_number: 1, capacity: 2, daily_price: 50)
  room_1.save!
  room_2 = Room.new(hotel: hotel_1, room_number: 2, capacity: 4, daily_price: 80)
  room_2.save!
puts "Created new rooms"
