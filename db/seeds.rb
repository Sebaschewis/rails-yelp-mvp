# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = [
  { name: "Epicure", address: "75008 Paris", category: "french" },
  { name: "Sushi Zen", address: "Tokyo, Japan", category: "japanese" },
  { name: "La Pasta", address: "Rome, Italy", category: "italian" }
]

restaurants.each do |restaurant|
  r = Restaurant.create!(restaurant)
  r.reviews.create!(content: "Amazing food!", rating: 5)
  r.reviews.create!(content: "Pretty good!", rating: 4)
end
