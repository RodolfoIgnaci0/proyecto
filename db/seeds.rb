# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

12.times do |i|
  Product.create(
  name: Faker::Commerce.product_name,
  price: Faker::Commerce.price,
  stock: i,
  detail: "Detalle #{i}",
  photo: Faker::LoremPixel.image("50x60", false, 'fashion', 3) #=> "http://lorempixel.com/output/fashion-q-c-400-200-3.jpg"
  )
end
