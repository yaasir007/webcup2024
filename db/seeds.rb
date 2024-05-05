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

# # Seeds for Eerie Entrees
# Product.create!(title: 'Finger Foods', description: 'Literally. Try our assortment of crispy human fingers', price: 10, category: 'Eerie Entrees', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870130/Monster%20Munchies/Menu/finger_foods_batcheditor_fotor_cipbxe.webp')
# Product.create!(title: 'Spectral Sliders', description: 'Mini burgers with a twist: each patty is made of freshly collected human brain', price: 10, category: 'Eerie Entrees', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870143/Monster%20Munchies/Menu/spectral_sliders_batcheditor_fotor_avpvqj.webp')
# Product.create!(title: "Ghoul's Gizzards", description: 'Spicy and tangy, these fried gizzards are served with a ghostly aioli that vanishes on your tongue', price: 10, category: 'Eerie Entrees', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870133/Monster%20Munchies/Menu/ghoul_s_gizzards_batcheditor_fotor_ph8f5z.webp')

# # Seeds for Cryptic Concoctions
# Product.create!(title: 'Bloody Revenge', description: "A cocktail so red and thick, you'll think it's right out of a transfusion bag", price: 10, category: 'Cryptic Concoctions', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870124/Monster%20Munchies/Menu/bloody_mary_s_revenge_batcheditor_fotor_te9x3h.webp')
# Product.create!(title: "Witch's Brew", description: 'A mix of dark human nut spirits, served smoking with dry ice for that otherworldly effect', price: 10, category: 'Cryptic Concoctions', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870147/Monster%20Munchies/Menu/witch_s_brew_batcheditor_fotor_b6wm5z.webp')

# # Seeds for Monstrous Mains
# Product.create!(title: 'Arm & Hammer Steak', description: 'Juicy arm cuts, tenderized with our graveyard hammer', price: 15, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870124/Monster%20Munchies/Menu/arm_and_hammer_steak_batcheditor_fotor_wgoxuk.webp')
# Product.create!(title: "Coffin Sandwiches", description: "Packed with thinly sliced mortician's special meats", price: 10, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870126/Monster%20Munchies/Menu/coffin_sandwiches_batcheditor_fotor_dcjgu4.webp')
# Product.create!(title: 'Skeleton Skewers', description: 'Marinated pieces of meat grilled to perfection on bone-shaped skewers', price: 25, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870141/Monster%20Munchies/Menu/skeleton_skewers_batcheditor_fotor_ov6gvk.webp')
# Product.create!(title: "Pharaoh’s Fingers Falafel", description: "Crispy and golden, shaped in homage to the pharaohs’", price: 30, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870136/Monster%20Munchies/Menu/pharaoh_s_fingers_falafel_batcheditor_fotor_mhadoe.webp')
# Product.create!(title: 'Sarcophagus Stew', description: "A hearty blend featuring 'mummified' meat preserved in our chef's secret spices.", price: 20, category: 'Monstrous Mains', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870615/Monster%20Munchies/Menu/sarcophagus_stew_batcheditor_fotor_wmvatu.webp')
# Product.create!(title: 'Curse of the Curry', description: 'A golden, spicy curry served in a hollowed-out bread sarcophagus.', price: 20, category: 'Monstrous Mains', image_url:'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870128/Monster%20Munchies/Menu/curse_of_the_curry_batcheditor_fotor_pehnee.webp' )

# # Seeds for Zombie Zest
# Product.create!(title: 'Brain Boost Hot Sauce', description: 'Perfect for pouring over your favorite cerebrum.', price: 15, category: 'Zombie Zest', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870126/Monster%20Munchies/Menu/brain_boost_hot_sauce_batcheditor_fotor_esjgcs.webp')
# Product.create!(title: 'Ribcage Ribs', description: 'Exposed ribs slow-cooked in a graveyard marinade.', price: 30, category: 'Zombie Zest', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870139/Monster%20Munchies/Menu/ribcage_ribs_batcheditor_fotor_bnxnje.webp')
# Product.create!(title: 'Pulsating Heart Poppers', description: 'Hearts that beat with flavor, bursting in your mouth.', price: 25, category: 'Zombie Zest', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870146/Monster%20Munchies/Menu/pulsating_heart_poppers_batcheditor_fotor_dqgcqh.webp')
# Product.create!(title: 'Zombified Spirals', description: 'Fresh zucchini spirals tossed in a brainy pesto sauce, topped with chunks of fleshy tomatoes.', price: 15, category: 'Zombie Zest', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870148/Monster%20Munchies/Menu/zombified_zucchini_spirals_batcheditor_fotor_pnschu.webp')

# # Seeds for Dreadful Delicacies
# Product.create!(title: 'Eyeball Éclairs', description: "Don’t worry, it is just pastry cream in a thin layer of chocolate.", price: 10, category: 'Dreadful Delicacies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870129/Monster%20Munchies/Menu/eyeball_e%CC%81clairs_batcheditor_fotor_uwc7qg.webp')
# Product.create!(title: "Crypt Crumble", description: 'A decadent apple and blackberry crumble, buried under a  iayer of crumbly topping.', price: 15, category: 'Dreadful Delicacies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870127/Monster%20Munchies/Menu/crypt_keeper_s_crumble_batcheditor_fotor_zvmfrz.webp')
# Product.create!(title: 'Moldy Cheese Platter', description: "Aged and fermented until it\'s practically undead itself.", price: 20, category: 'Dreadful Delicacies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870134/Monster%20Munchies/Menu/moldy_cheese_platter_batcheditor_fotor_kpbpsu.webp')
# Product.create!(title: 'Ghostly Gelato', description: 'A chilling blend of vanilla bean and eerie blue spirulina, served with shards of sugar glass.', price: 12, category: 'Dreadful Delicacies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870132/Monster%20Munchies/Menu/ghostly_gelato_batcheditor_fotor_bwk2gz.webp')

# # Seeds for Ghastly Goodies
# Product.create!(title: 'Plasma Potion', description: 'A plasma-like potion that rejuvenates any tired zombie.', price: 8, category: 'Ghastly Goodies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870138/Monster%20Munchies/Menu/plasma_potion_batcheditor_fotor_xd6n6h.webp')
# Product.create!(title: "Vampire's Vengeance", description: 'A rich, red wine cocktail with a splash of blood, garnished with a \'plasma\'-soaked cherry.', price: 12, category: 'Ghastly Goodies', image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870142/Monster%20Munchies/Menu/vampire_s_vengeance_batcheditor_fotor_fnzhdb.webp')
# Product.create!(title: 'Bone Broth Brew', description: 'Simmered slow and steady to capture every last bit of marrow.', price: 10, category: 'Ghastly Good', image_url:'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870125/Monster%20Munchies/Menu/bone_broth_brew_batcheditor_fotor_uqte7n.webp')

# Seeds for Eerie Entrees
Product.create!(
  title: 'Finger Foods',
  description: 'Literally. Try our assortment of crispy human fingers',
  price: 10,
  category: 'Eerie Entrees',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870130/Monster%20Munchies/Menu/finger_foods_batcheditor_fotor_cipbxe.webp',
  detailed_description: 'Crispy, severed digits fried to golden perfection. Born from ancient catacomb recipes.',
  ingredients: 'Human fingers, spooky seasoning.',
  nutritional_info: 'Approx. 300 cal. Rich in shock value!',
  chef_note: 'Best enjoyed with a pinch of graveyard dust and Zombie Zest sauce.',
  supernatural_effects: 'Grants the ability to communicate with spirits from the underworld for an hour.'
)

Product.create!(
  title: 'Spectral Sliders',
  description: 'Mini burgers with a twist: each patty is made of freshly collected human brain',
  price: 10,
  category: 'Eerie Entrees',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870143/Monster%20Munchies/Menu/spectral_sliders_batcheditor_fotor_avpvqj.webp',
  detailed_description: 'Mini patties crafted from ethereal elements, offering a taste of the afterlife with every bite.',
  ingredients: 'Ethereal man meat, phantom onions, spectral sauce.',
  nutritional_info: 'Approx. 400 cal. Hauntingly nutritious.',
  chef_note: 'Pair with our Bloody Revenge for a bloody good meal!',
  supernatural_effects: 'Eating these may cause temporary invisibility — perfect for sneaking an extra slider or escaping awkward dates!'
)

Product.create!(
  title: "Ghoul's Gizzards",
  description: 'Spicy and tangy, these fried gizzards are served with a ghostly aioli that vanishes on your tongue',
  price: 10,
  category: 'Eerie Entrees',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870133/Monster%20Munchies/Menu/ghoul_s_gizzards_batcheditor_fotor_ph8f5z.webp',
  detailed_description: 'Tangy gizzards fried to a crisp, vanished into your mouth with our ghostly aioli. Straight from the underworld kitchens.',
  ingredients: 'Young human heart, infernal spices, ghostly aioli.',
  nutritional_info: 'Approx. 450 cal. Packed with proteins.',
  chef_note: 'Scream with delight with each bite. Perfect for sharing.',
  supernatural_effects: 'These spicy bites are known to boost spectral wailing abilities, ideal for haunting your neighbors.'
)

# Seeds for Cryptic Concoctions
Product.create!(
  title: 'Bloody Revenge',
  description: "A cocktail so red and thick, you'll think it's right out of a transfusion bag",
  price: 10,
  category: 'Cryptic Concoctions',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870124/Monster%20Munchies/Menu/bloody_mary_s_revenge_batcheditor_fotor_te9x3h.webp',
  detailed_description: 'This cocktail will have you checking your neck! Thick, red, and terrifyingly delicious.',
  ingredients: 'Tomato juice, vodka, celery, horseradish, worcestershire sauce.',
  nutritional_info: 'Approx. 150 cal per serving.',
  chef_note: 'Best served chilled with an eye... I mean, an ice cube.',
  supernatural_effects: 'Drinking this might make you see the world in shades of red for a short while. Beware of sudden vampire cravings!'
)

# Seeds for Monstrous Mains
Product.create!(
  title: 'Arm & Hammer Steak',
  description: 'Juicy arm cuts, tenderized with our graveyard hammer',
  price: 15,
  category: 'Monstrous Mains',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870124/Monster%20Munchies/Menu/arm_and_hammer_steak_batcheditor_fotor_wgoxuk.webp',
  detailed_description: 'Hammered into tenderness in our cryptic kitchen, these steaks are to die for!',
  ingredients: 'Arm cuts (beef), graveyard spices.',
  nutritional_info: 'Rich in iron, about 500 cal.',
  chef_note: 'Devour with a Bloody Revenge to keep the vampires away.',
  supernatural_effects: 'Feasting on this may temporarily endow you with supernatural strength — or at least make you feel invincible.'
)

Product.create!(
  title: "Coffin Sandwiches",
  description: "Packed with thinly sliced mortician's special meats",
  price: 10,
  category: 'Monstrous Mains',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870126/Monster%20Munchies/Menu/coffin_sandwiches_batcheditor_fotor_dcjgu4.webp',
  detailed_description: "Stacked with slices of the finest cuts hidden in coffins. This sandwich is a true mortician's delight.",
  ingredients: "Mortician's special meats, cursed mustard, haunted bread.",
  nutritional_info: 'Approx. 550 cal. A killer meal!',
  chef_note: 'Perfect for your last meal!',
  supernatural_effects: 'Consuming this sandwich is rumored to induce deep, prophetic dreams of cryptic messages.'
)


Product.create!(
  title: 'Curse of the Curry',
  description: 'A golden, spicy curry served in a hollowed-out bread sarcophagus.',
  price: 20,
  category: 'Monstrous Mains',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870128/Monster%20Munchies/Menu/curse_of_the_curry_batcheditor_fotor_pehnee.webp',
  detailed_description: "This golden, spicy curry is served in a bread sarcophagus—a dish that's cursed with deliciousness.",
  ingredients: 'Spicy curry, bread sarcophagus, haunted herbs.',
  nutritional_info: 'Hot with 700 cal.',
  chef_note: 'Curse your hunger away with this fiery delight.',
  supernatural_effects: 'This curry packs a punch strong enough to lift curses or perhaps inflict new ones on your taste buds.'
)

Product.create!(
  title: 'Ribcage Ribs',
  description: 'Exposed ribs slow-cooked in a graveyard marinade.',
  price: 30,
  category: 'Zombie Zest',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870139/Monster%20Munchies/Menu/ribcage_ribs_batcheditor_fotor_bnxnje.webp',
  detailed_description: 'Slow-roasted to keep the undead coming back for more.',
  ingredients: 'Prime ribcage ribs, graveyard dirt, moonlit marinade.',
  nutritional_info: 'Packed with protein, approximately 700 cal.',
  chef_note: 'Best served under a full moon for a truly supernatural dining experience.',
  supernatural_effects: 'Might cause an eerie glow in the eater.'
)

Product.create!(
  title: 'Heart Poppers',
  description: 'Hearts that beat with flavor, bursting in your mouth.',
  price: 25,
  category: 'Zombie Zest',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870146/Monster%20Munchies/Menu/pulsating_heart_poppers_batcheditor_fotor_dqgcqh.webp',
  detailed_description: 'Each bite delivers a burst of life force straight to your soul.',
  ingredients: 'Freshly harvested hearts, infernal hot sauce.',
  nutritional_info: 'Rich in life essence, 500 cal.',
  chef_note: 'Savor slowly to feel each pulse of flavor.',
  supernatural_effects: 'Guaranteed to quicken your heartbeat.'
)

Product.create!(
  title: 'Zombified Spirals',
  description: 'Fresh zucchini spirals tossed in a brainy pesto sauce, topped with chunks of fleshy tomatoes.',
  price: 15,
  category: 'Zombie Zest',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870148/Monster%20Munchies/Menu/zombified_zucchini_spirals_batcheditor_fotor_pnschu.webp',
  detailed_description: 'Vegetarian-friendly with a nefarious twist.',
  ingredients: 'Zucchini spirals, brainy pesto, fleshy tomatoes.',
  nutritional_info: 'Low calorie, high in nutrients, about 250 cal.',
  chef_note: "Great for a light bite that won't weigh down your undead limbs.",
  supernatural_effects: 'May induce a slight vegetative state post-consumption.'
)

# Seeds for Dreadful Delicacies
Product.create!(
  title: 'Eyeball Éclairs',
  description: "Don’t worry, it is just pastry cream in a thin layer of chocolate.",
  price: 10,
  category: 'Dreadful Delicacies',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870129/Monster%20Munchies/Menu/eyeball_e%CC%81clairs_batcheditor_fotor_uwc7qg.webp',
  detailed_description: 'Soft pastry filled with creamy eyeball-like delights.',
  ingredients: 'Choux pastry, vanilla pastry cream, white and dark chocolate.',
  nutritional_info: 'Approximately 200 calories per éclair.',
  chef_note: 'Bite carefully, lest the eyeballs bite back.',
  supernatural_effects: 'Enhances your night vision for an hour post-consumption.'
)


Product.create!(
  title: 'Moldy Cheese Platter',
  description: "Aged and fermented until it's practically undead itself.",
  price: 20,
  category: 'Dreadful Delicacies',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870134/Monster%20Munchies/Menu/moldy_cheese_platter_batcheditor_fotor_kpbpsu.webp',
  detailed_description: 'A selection of the finest cheeses, aged to a frightful perfection.',
  ingredients: 'Blue cheese, gorgonzola, stilton.',
  nutritional_info: 'High in calcium, about 100 cal per serving.',
  chef_note: 'Pair with a glass of Vampire’s Vengeance for an exquisitely eerie experience.',
  supernatural_effects: 'The flavors are so strong they could wake the dead.'
)

Product.create!(
  title: 'Ghostly Gelato',
  description: 'A chilling blend of vanilla bean and eerie blue spirulina, served with shards of sugar glass.',
  price: 12,
  category: 'Dreadful Delicacies',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870132/Monster%20Munchies/Menu/ghostly_gelato_batcheditor_fotor_bwk2gz.webp',
  detailed_description: 'Frozen dessert that haunts your palate with chillingly sweet flavors.',
  ingredients: 'Vanilla beans, blue spirulina, sugar glass.',
  nutritional_info: 'Approx. 250 cal per serving.',
  chef_note: 'Enjoy after a Sarcophagus Stew for a chilling end to a monstrous meal.',
  supernatural_effects: 'Might cause a ghostly whisper in your ear as you savor each bite.'
)

# Seeds for Ghastly Goodies
Product.create!(
  title: 'Plasma Potion',
  description: 'A plasma-like potion that rejuvenates any tired zombie.',
  price: 8,
  category: 'Ghastly Goodies',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870138/Monster%20Munchies/Menu/plasma_potion_batcheditor_fotor_xd6n6h.webp',
  detailed_description: 'Brewed from the essence of life itself, this potion is sure to perk up even the deadest of the undead.',
  ingredients: 'Plasma from ethically sourced zombies, hint of lime.',
  nutritional_info: 'Zero calories but revitalizing energy.',
  chef_note: 'Drink quickly after opening to capture the full effect.',
  supernatural_effects: 'Temporarily enhances undead agility and mental clarity.'
)

Product.create!(
  title: 'Bone Broth Brew',
  description: 'Simmered slow and steady to capture every last bit of marrow.',
  price: 10,
  category: 'Ghastly Goodies',
  image_url: 'https://res.cloudinary.com/dqjdq06qv/image/upload/v1714870125/Monster%20Munchies/Menu/bone_broth_brew_batcheditor_fotor_uqte7n.webp',
  detailed_description: 'Extracted from the depths of the catacombs, this brew is a marrow-lover’s dream.',
  ingredients: 'Bone marrow, roots of yew, essence of fog.',
  nutritional_info: 'Nutrient-rich, about 50 cal per serving.',
  chef_note: 'Perfect as a base for any stew or as a warming nightcap.',
  supernatural_effects: 'Strengthens bones and may cause echoes of ancient chants to be heard in the distance.'
)


puts "Seeding Completed"
