# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0639482049", category: "italian")
puts "Created Dishoom"
Restaurant.create!(name: "Ramen World", address: "Disneyland", phone_number: "0648395804", category: "japanese")
puts "Created Ramen World"
Restaurant.create!(name: "Les frites du peuple", address: "3 rue de la paix", phone_number: "0689482067", category: "belgian")
puts "Created Les frites du peuple"
Restaurant.create!(name: "L'entrecôte", address: "70 rue ordener", phone_number: "0184203948", category: "french")
puts "Created L'entrecôte"
Restaurant.create!(name: "Le Dragon de l'asie", address: "70 rue ordener", phone_number: "0189493094", category: "chinese")
puts "Created Le Dragon de l'asie"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
