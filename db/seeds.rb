# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all
Restaurant.create!(name: "Margherita", address: "Amsterdam", phone_number: "312312321", category: "italian")
Restaurant.create!(name: "Mozzico",  address: "Amsterdam", phone_number: "545788", category: "italian")
Restaurant.create!(name: "ChinChunChan",  address: "London", phone_number: "567893",category: "chinese")
Restaurant.create!(name: "Kyo",  address: "Amstelveen", phone_number: "2132312", category: "japanese")
Restaurant.create!(name: "Le petit putain",  address: "Paris", phone_number: "1425788", category: "french")
