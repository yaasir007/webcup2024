# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the database..."
BasketItem.destroy_all
Order.destroy_all
Basket.destroy_all
Reservation.destroy_all
Product.destroy_all
Table.destroy_all
User.destroy_all


puts "Seeding the database..."


# Create a user
User.create!(email: 'shawnoftheundead@deadmail.com', password: 'password')

Table.create!(name: 'Ghoulish Grub')
Table.create!(name: 'Spooky Snack')
Table.create!(name: 'Creepy Table')
Table.create!(name: 'Eerie Eats')

Product.create!(title: 'Brain Soup', description: 'A delicious soup made from the finest brains.', price: 10, category: 'Appetizer')
Product.create!(title: 'Finger Sandwiches', description: 'A selection of fingers served on a bed of lettuce.', price: 15, category: 'Appetizer')
Product.create!(title: 'Eyeball Salad', description: 'A salad made from the freshest eyeballs.', price: 20, category: 'Appetizer')
Product.create!(title: 'Bat Wings', description: 'Crispy bat wings served with a side of blood sauce.', price: 25, category: 'Appetizer')
Product.create!(title: 'Witch\'s Brew', description: 'A delicious concoction of herbs and spices.', price: 30, category: 'Main Course')
Product.create!(title: 'Human Stew', description: 'A hearty stew made from the finest humans.', price: 35, category: 'Main Course')

puts "Seeding Completed"
