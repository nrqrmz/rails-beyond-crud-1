# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all
puts ""
puts "Creating restaurants..."

25.times do |i|
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    rating: rand(1..5)
  )
  puts "Restaurant ##{i + 1} successfully created!"
end

puts "Finished!"
