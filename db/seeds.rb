# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
# . . .

10.times do |n|
  Product.create(
    title: Faker::Book.title,
    description: Faker::HitchhikersGuideToTheGalaxy.quote,
    image_url: Faker::Internet.url('example.com'),
    price: Faker::Number.decimal(1,2) * 50,
  )
end