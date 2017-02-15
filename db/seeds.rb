# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.destroy_all
# states = ["Minnesota", "Wisconsin", "Texas", "Alabama", "California"]
# users = []
# 5.times do
#   users << User.new{name: Faker::StarWars.character, age: rand(12..80), bio: Faker::ChuckNorris.fact, state: states.sample}
# end
# users.each { |params| User.create!(params) }

User.destroy_all
users_attr = [
  { name: 'joe', age: 44, bio: 'I am a male', state: 'Utah' },
  { name: 'mike', age: 31, bio: 'I play guitar', state: 'Texas' },
  { name: 'sarah', age: 22, bio: 'I do not like cats', state: 'Minnesota' },
  { name: 'barry', age: 59, bio: 'I am a doctor', state: 'Alabama' }
]
users_attr.each { |params| User.create!(params) }
