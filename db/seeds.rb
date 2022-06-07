# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Offer.destroy_all
User.destroy_all

user1 = User.create(
  email: "toto@gmail.com",
  password: "totototo",
  password_confirmation: "totototo"
)

user2 = User.create(
  email: "valentin@gmail.com",
  password: "valentinvalentin",
  password_confirmation: "valentinvalentin"
)

user3 = User.create(
  email: "clem@gmail.com",
  password: "clemclem",
  password_confirmation: "clemclem"
)

user4 = User.create(
  email: "mathilde@gmail.com",
  password: "mathildemathilde",
  password_confirmation: "mathildemathilde"
)

user5 = User.create(
  email: "julien@gmail.com",
  password: "julienjulien",
  password_confirmation: "julienjulien"
)

Offer.create(
  title: "Ferrari 488GTB",
  price: "300",
  brand: "Ferrari",
  model: "488 GTB SPIDER",
  horsepower: "500",
  km_age: "1500",
  body_type: "3",
  user: user1
)

Offer.create(
  title: "Loue une belle Lambo",
  price: "450",
  brand: "Lamborghini",
  model: "HURACÁN EVO RWD",
  horsepower: "500",
  km_age: "1000",
  body_type: "2",
  user: user2
)

Offer.create(
  title: "Loue une belle Porsche",
  price: "350",
  brand: "Porsche",
  model: "HTAYCAN 4S",
  horsepower: "435",
  km_age: "1800",
  body_type: "2",
  user: user3
)

Offer.create(
  title: "Loue une belle Bentley",
  price: "480",
  brand: "Bentley",
  model: "CONTINENTAL GT CABRIOLET",
  horsepower: "630",
  km_age: "1200",
  body_type: "3",
  user: user4
)

Offer.create(
  title: "Loue une belle Porsche bleue!",
  price: "600",
  brand: "Porsche",
  model: "CAYMAN GT4",
  horsepower: "420",
  km_age: "800",
  body_type: "2",
  user: user5
)
