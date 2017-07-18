# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)\
puts "Creating robots...."
20.times do
  Robot.create(name: Faker::Name.name, has_sentience: Faker::Boolean.boolean,
    has_wheels: Faker::Boolean.boolean, has_tracks: Faker::Boolean.boolean,
    number_of_rotors: Faker::Number.between(1, 10), color: Faker::Color.color_name,
    on_fire: Faker::Boolean.boolean, rusty: Faker::Boolean.boolean,
    loose_screws: Faker::Boolean.boolean, paint_scratched: Faker::Boolean.boolean,
    is_extinguished: false, is_shipped: false)
end