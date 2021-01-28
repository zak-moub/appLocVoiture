# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Agence.destroy_all 

puts 'Creating Agence'
25.times do
  Agence.create(libelle: Faker::Company.industry , email: Faker::Internet.email, telephone: Faker::PhoneNumber.cell_phone_in_e164, adresse: Faker::Address.full_address, nb_voiture: Faker::Number.between(from: 1, to: 20))
end

puts "#{Agence.count} agences created !"