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

# Entries for Eerie Entrees
Product.create!(title: 'Finger Foods', description: 'Literally. Try our assortment of crispy human fingers', price: 10, category: 'Eerie Entrees')
Product.create!(title: 'Spectral Sliders', description: 'Mini burgers with a twist: each patty is made of fresly collected human brain', price: 10, category: 'Eerie Entrees')
Product.create!(title: "Ghoul's Gizzards", description: 'Spicy and tangy, these fried gizzards are served with a ghostly aioli that vanishes on your tongue', price: 10, category: 'Eerie Entrees')

# Entries for Cryptic Concoctions
Product.create!(title: 'Bloody Mary’s Revenge', description: "A cocktail so red and thick, you'll think it's right out of a transfusion bag", price: 10, category: 'Cryptic Concoctions')
Product.create!(title: "Witch's Brew", description: 'A mystical mix of dark human nuts and spirits, served smoking with dry ice for that otherworldly effect', price: 10, category: 'Cryptic Concoctions')

# Entries for Monstrous Mains
Product.create!(title: 'Arm and Hammer Steak', description: 'Juicy arm cuts, tenderized with our graveyard hammer', price: 15, category: 'Monstrous Mains')
Product.create!(title: "Coffin Sandwiches", description: "Packed with thinly sliced mortician's special meats", price: 10, category: 'Monstrous Mains')
Product.create!(title: 'Skeleton Skewers', description: ' Marinated pieces of meat grilled to perfection on bone-shaped', price: 25, category: 'Monstrous Mains')
Product.create!(title: 'Pharaoh’s Fingers Falafel', description: 'Crispy and golden, shaped in homage to the pharaohs’ eternal grasp', price: 30, category: 'Monstrous Mains')
Product.create!(title: 'Sarcophagus Stew', description: 'A salad made from the freshest eyeballs.', price: 20, category: 'Monstrous Mains')
Product.create!(title: 'Curse of the Curry', description: 'A golden, spicy curry served in a hollowed-out bread sarcophagus.', price: 20, category: 'Monstrous Mains')

# Entries for Zombie Zest
Product.create!(title: 'Brain Boost Hot Sauce', description: 'Perfect for pouring over your favorite cerebrum.', price: 15, category: 'Zombie Zest')
Product.create!(title: 'Ribcage Ribs', description: 'Exposed ribs slow-cooked in a graveyard marinade.', price: 30, category: 'Zombie Zest')
Product.create!(title: 'Pulsating Heart Poppers', description: 'Hearts that beat with flavor, bursting in your mouth.', price: 25, category: 'Zombie Zest')
Product.create!(title: 'Zombified Zucchini Spirals', description: 'Fresh zucchini spirals tossed in a brainy pesto sauce, topped with chunks of fleshy tomatoes.', price: 15, category: 'Zombie Zest')

# Entries for Dreadful Delicacies
Product.create!(title: 'Eyeball Éclairs', description: 'Don’t worry, it’s just pastry cream in a thin layer of chocolate.', price: 10, category: 'Dreadful Delicacies')
Product.create!(title: 'Crypt Keeper\'s Crumble', description: 'A decadent apple and blackberry crumble, buried under a layer of crumbly topping.', price: 15, category: 'Dreadful Delicacies')
Product.create!(title: 'Moldy Cheese Platter', description: 'Aged and fermented until it\'s practically undead itself.', price: 20, category: 'Dreadful Delicacies')
Product.create!(title: 'Ghostly Gelato', description: 'A chilling blend of vanilla bean and eerie blue spirulina, served with shards of sugar glass.', price: 12, category: 'Dreadful Delicacies')

# Entries for Ghastly Goodies
Product.create!(title: 'Plasma Potion', description: 'A plasma-like potion that rejuvenates any tired zombie.', price: 8, category: 'Ghastly Goodies')
Product.create!(title: 'Vampire\'s Vengeance', description: 'A rich, red wine cocktail with a splash of pomegranate juice, garnished with a \'blood\'-soaked cherry.', price: 12, category: 'Ghastly Goodies')
Product.create!(title: 'Bone Broth Brew', description: 'Simmered slow and steady to capture every last bit of marrow.', price: 10, category: 'Ghastly Goodies')
Product.create!(title: 'Pixie Dust Parfait', description: 'Layers of sparkling fairy dust (edible glitter), berries, and creamy yogurt that shimmer with magic.', price: 14, category: 'Ghastly Goodies')


puts "Seeding Completed"
