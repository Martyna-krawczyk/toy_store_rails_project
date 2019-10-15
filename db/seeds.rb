# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..20
  Toy.create(
    name:Faker::Game.title,
    description:Faker::Movie.quote,
    date_item_posted:Faker::Date.birthday(min_age: 18, max_age: 65),
    user:Faker::FunnyName.two_word_name
  )
end
puts "Created #{i} records"