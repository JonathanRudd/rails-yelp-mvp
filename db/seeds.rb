# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed your restaurant database in db/seeds.rb with at least 5 valid restaurant records.
# Run rails db:seed to launch the seeding script.
require 'faker'

puts "creating 5 fake restaurants"


5.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}",
    phone_number: "#{Faker::PhoneNumber} ",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
end
puts "done."
