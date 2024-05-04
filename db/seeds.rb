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
User.create!(email: 'admin@gmail.com', password: 'password', admin: true)
User.create!(email: 'user@gmail.com', password: 'password')


Table.create!(name: 'Ghoulish Grub')
Table.create!(name: 'Spooky Snack')
Table.create!(name: 'Creepy Table')
Table.create!(name: 'Eerie Eats')

# Seeds for Eerie Entrees
Product.create!(title: 'Finger Foods', description: 'Literally. Try our assortment of crispy human fingers', price: 10, category: 'Eerie Entrees', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850898/Monster%20Munchies/Menu/Finger_Foods_whejnd.webp')
Product.create!(title: 'Spectral Sliders', description: 'Mini burgers with a twist: each patty is made of freshly collected human brain', price: 10, category: 'Eerie Entrees', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850900/Monster%20Munchies/Menu/Spectral_Sliders_uakl2d.webp')
Product.create!(title: "Ghoul's Gizzards", description: 'Spicy and tangy, these fried gizzards are served with a ghostly aioli that vanishes on your tongue', price: 10, category: 'Eerie Entrees', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850898/Monster%20Munchies/Menu/Ghoul_s_Gizzards_dmhoq4.webp')

# Seeds for Cryptic Concoctions
Product.create!(title: 'Bloody Mary’s Revenge', description: "A cocktail so red and thick, you'll think it's right out of a transfusion bag", price: 10, category: 'Cryptic Concoctions', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850888/Monster%20Munchies/Menu/Bloody_Mary_s_Revenge_kpcier.webp')
Product.create!(title: "Witch's Brew", description: 'A mix of dark human nut spirits, served smoking with dry ice for that otherworldly effect', price: 10, category: 'Cryptic Concoctions', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850889/Monster%20Munchies/Menu/Witch_s_Brew_us05cf.webp')

# Seeds for Monstrous Mains
Product.create!(title: 'Arm and Hammer Steak', description: 'Juicy arm cuts, tenderized with our graveyard hammer', price: 15, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850889/Monster%20Munchies/Menu/Arm_and_Hammer_Steak_tysn4u.webp')
Product.create!(title: "Coffin Sandwiches", description: "Packed with thinly sliced mortician's special meats", price: 10, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850888/Monster%20Munchies/Menu/Coffin_Sandwiches_boajhp.webp')
Product.create!(title: 'Skeleton Skewers', description: 'Marinated pieces of meat grilled to perfection on bone-shaped skewers', price: 25, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850890/Monster%20Munchies/Menu/Skeleton_Skewers_ddtxht.webp')
Product.create!(title: "Pharaoh’s Fingers Falafel", description: 'Crispy and golden, shaped in homage to the pharaohs’ eternal grasp', price: 30, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850898/Monster%20Munchies/Menu/Pharaoh_s_Fingers_Falafel_pxfflp.webp')
Product.create!(title: 'Sarcophagus Stew', description: "A hearty blend featuring 'mummified' meat preserved in our chef's secret spices.", price: 20, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850899/Monster%20Munchies/Menu/Sarcophagus_Stew_fq7mw6.webp')
Product.create!(title: 'Curse of the Curry', description: 'A golden, spicy curry served in a hollowed-out bread sarcophagus.', price: 20, category: 'Monstrous Mains', image_url:'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850891/Monster%20Munchies/Menu/Curse_of_the_Curry_h45fgy.webp' )

# Seeds for Zombie Zest
Product.create!(title: 'Brain Boost Hot Sauce', description: 'Perfect for pouring over your favorite cerebrum.', price: 15, category: 'Zombie Zest', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850888/Monster%20Munchies/Menu/Brain_Boost_Hot_Sauce_g6ox6t.webp')
Product.create!(title: 'Ribcage Ribs', description: 'Exposed ribs slow-cooked in a graveyard marinade.', price: 30, category: 'Zombie Zest', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850899/Monster%20Munchies/Menu/Ribcage_Ribs_elvtl9.webp')
Product.create!(title: 'Pulsating Heart Poppers', description: 'Hearts that beat with flavor, bursting in your mouth.', price: 25, category: 'Zombie Zest', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850899/Monster%20Munchies/Menu/Pulsating_Heart_Poppers_hn2b0y.webp')
Product.create!(title: 'Zombified Zucchini Spirals', description: 'Fresh zucchini spirals tossed in a brainy pesto sauce, topped with chunks of fleshy tomatoes.', price: 15, category: 'Zombie Zest', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850899/Monster%20Munchies/Menu/Zombified_Zucchini_Spirals_wlkjdj.webp')

# Seeds for Dreadful Delicacies
Product.create!(title: 'Eyeball Éclairs', description: "Don’t worry, it is just pastry cream in a thin layer of chocolate.", price: 10, category: 'Dreadful Delicacies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850890/Monster%20Munchies/Menu/Eyeball_E%CC%81clairs_ujsri7.webp')
Product.create!(title: "Crypt Keeper's Crumble", description: 'A decadent apple and blackberry crumble, buried under a  iayer of crumbly topping.', price: 15, category: 'Dreadful Delicacies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850891/Monster%20Munchies/Menu/Crypt_Keeper_s_Crumble_pqqzqy.webp')
Product.create!(title: 'Moldy Cheese Platter', description: "Aged and fermented until it\'s practically undead itself.", price: 20, category: 'Dreadful Delicacies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850890/Monster%20Munchies/Menu/Moldy_Cheese_Platter_cevpzy.webp')
Product.create!(title: 'Ghostly Gelato', description: 'A chilling blend of vanilla bean and eerie blue spirulina, served with shards of sugar glass.', price: 12, category: 'Dreadful Delicacies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850889/Monster%20Munchies/Menu/Ghostly_Gelato_lqsnxr.webp')

# Seeds for Ghastly Goodies
Product.create!(title: 'Plasma Potion', description: 'A plasma-like potion that rejuvenates any tired zombie.', price: 8, category: 'Ghastly Goodies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850898/Monster%20Munchies/Menu/Plasma_Potion_t0ekjg.webp')
Product.create!(title: "Vampire's Vengeance", description: 'A rich, red wine cocktail with a splash of blood, garnished with a \'plasma\'-soaked cherry.', price: 12, category: 'Ghastly Goodies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850888/Monster%20Munchies/Menu/Vampire_s_Vengeance_t9ky71.webp')
Product.create!(title: 'Bone Broth Brew', description: 'Simmered slow and steady to capture every last bit of marrow.', price: 10, category: 'Ghastly Good', image_url:'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714850890/Monster%20Munchies/Menu/Bone_Broth_Brew_pbowsz.webp')


puts "Seeding Completed"
