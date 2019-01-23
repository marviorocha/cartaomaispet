# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Admin', last_name: 'Administrator', email: 'admin@admin.com', password: 'admin123',
        password_confirmation: 'admin123', role: 'admin')

# Send to users
10.times do |i|
User.create(
name: Faker::Name.name,
last_name: Faker::Name.last_name,
email: Faker::Internet.email,
password: '123456',
password_confirmation:'123456',
role: "user")
end

#Send to petshop
25.times do |i|
Petshop.create(
  title:  Faker::Lorem.sentence(3),
  address: Faker::Address.street_address,
  phone:  Faker::PhoneNumber.phone_number,
  cep:    Faker::Address.zip_code,
  estado: Faker::Address.state,
  descricao: Faker::Lorem.sentence(80),
  cidade: Faker::Address.city,

)

# Send to categories

category = Category.create([
{ name: "Medicamento", petshop_id: "1" },
{ name: "Banho", petshop_id: "3" },
{ name: "Tosa", petshop_id: "1" },
{ name: "Acessorios", petshop_id: "2" },
{ name: "Acessorios", petshop_id: "1" },
{ name: "Banho", petshop_id: "1" },

])

# Send To Discount
# 25.times do |i|
# Discount.create(
# valor: Faker::Number.between(10, 70),
# petshop_id: Faker::Number.between(1, 25)
# )
# end

end
