# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "cleaning database"
Recipe.destroy_all

puts "creating recipes"
Recipe.create(name: "Best Yorkshire puddings", description: "The secret to getting gloriously puffed-up Yorkshire puddings is to have the fat sizzling hot and don't open the oven door!", rating: "4.5", image_url:"https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-901451_9-687c42b.jpg?quality=90")
Recipe.create(name: "Cheat's ramen noodle soup", description: "Use chicken, ramen noodles, spinach, sweetcorn and eggs to make this warming soup, ideal for when you crave something comforting yet light and wholesome.", rating: "3", image_url:"https://images.immediate.co.uk/production/volatile/sites/30/2020/08/ramen-d85927e.jpg?quality=90&webp=true&resize=300,272")
Recipe.create(name: "Spicy peanut butter & corn ramen", description: "Make a warming noodle soup which is sure to pack a punch – it’s spicy, sweet, nutty and savoury all in one slurp! The fish sauce adds a subtle layer of umami", rating: "1", image_url:"https://images.immediate.co.uk/production/volatile/sites/30/2024/12/Spicy-peanut-butter-and-corn-ramen-f8e2b15.jpg?quality=90&webp=true&resize=300,272")
Recipe.create(name: "Hoisin hot dogs", description: "Grill some sausages brushed with hoisin sauce, then top with cucumber and spring onion for a different take on a classic hot dog", rating: "3.2", image_url:"https://images.immediate.co.uk/production/volatile/sites/30/2020/08/hoisin-hot-dogs-1b5e000.jpg?quality=90&webp=true&resize=300,272")
puts "Finished! Created #{Recipe.count} recipes"
