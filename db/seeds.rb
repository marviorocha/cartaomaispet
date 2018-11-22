# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Admin', last_name: 'Administrator', email: 'admin@admin.com', password: 'admin123',
        password_confirmation: 'admin123', role: 'user')


10.times do |i|
User.create(
name: Faker::Name.name,
last_name: Faker::Name.last_name,
email: Faker::Internet.email,
password: '123456',
password_confirmation:'123456',
role: "user")
end


25.times do |i|
Petshop.create(
  title:  Faker::Lorem.sentence(3),
  address: Faker::Address.street_address,
  phone:  Faker::PhoneNumber.phone_number,
  cep:    Faker::Address.zip_code,
  estado: Faker::Address.state,
  cidade: Faker::Address.city
)
end
