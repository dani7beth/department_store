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
5.times do
    Department.find(1).items.create(name: Faker::Game.title, price: rand(11.30...59.99).round(2))
end

#for Comic Books department add some random comics
5.times do
    Department.find(2).items.create(name: Faker::DcComics.title, price: rand(5.00...100.99).round(2))
end

#for snacks department add some random snacks
5.times do
    Department.find(3).items.create(name: Faker::Food.fruits, price: rand(1.00...6.99).round(2))
end

