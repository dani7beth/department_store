# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Item.destroy_all

#for games department add some random games
20.times do
    Department.find(1).items.create(name: Faker::Game.title, price: Faker::Commerce.price(range: 10.0..59.0, as_string: true))
end

#for Comic Books department add some random comics
10.times do
    Department.find(2).items.create(name: Faker::DcComics.title, price: Faker::Commerce.price(range: 5.0..100.0, as_string: true))
end

#for snacks department add some random snacks
5.times do
    Department.find(3).items.create(name: Faker::Food.fruits, price: Faker::Commerce.price(range: 0..10.0, as_string: true))
end

