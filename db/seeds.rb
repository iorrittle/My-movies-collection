# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(email: "machu@machu",
  password:  "saku123",
  password_confirmation: "saku123",
  nickname:  "saku",
  genre_id: 6,
  admin: true)

  #Room.create!(
    #title: "ノマドランド",
    #director: "クロエ・ジャオ",
    #starring: "フランシス・マクドーマンド",
    #genre_id: 7,
    #public_year_id: 16,
  #)
  