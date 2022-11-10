# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning Database...'
Restaurant.destroy_all
puts 'Database is clean!'

puts 'Creating Restaurants...'

100.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(0..5),
    category: Restaurant::CATEGORIES.sample
  )
  puts "Restaurant #{restaurant.id} was created!"
end

puts 'Done!'
