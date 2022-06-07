# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Offer.destroy_all
User.destroy_all

img1 = URI.open("https://res.cloudinary.com/valentinmarcouxdev/image/upload/v1654609470/j5mk5eje6uphcww4lvw0.jpg")
img2 = URI.open("https://res.cloudinary.com/valentinmarcouxdev/image/upload/v1654609479/xaemzotsfxlzdo4h2mrl.jpg")

user1 = User.create(
  email: "toto@gmail.com",
  password: "totototo",
  password_confirmation: "totototo",
  name: "Clémence"
)

vhl1 = Offer.create(
  title: "Ferrari 488GTB",
  price: "300",
  brand: "Ferrari",
  model: "488 GTB SPIDER",
  horsepower: "500",
  km_age: "1500",
  body_type: "3",
  user: user1
)

vhl2 = Offer.create(
  title: "Porsche Taycan RS",
  price: "350",
  brand: "Porsche",
  model: "TAYCAN RS",
  horsepower: "400",
  km_age: "15000",
  body_type: "5",
  user: user1
)

vhl1.image.attach(io: img1, filename: 'ferrari.jpg', content_type: 'image/jpg')
vhl2.image.attach(io: img2, filename: 'porsche.jpg', content_type: 'image/jpg')
