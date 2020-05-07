# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts 'Cleaning database...'
# Cocktail.destroy_all
# Ingredient.destroy_all
#
# puts 'Creating cocktails...'
# cocktail_attributes = [
#   [ 'White Russian' ],
#   [ 'Bellini' ],
#   [ 'Champagne Cocktail' ],
#   [ 'Irish Coffee' ],
#   [ 'Bamboo' ],
#   [ 'Gin Gin Mule' ],
#   [ 'Long Island Ice Tea' ],
#   [ 'Vesper' ],
#   [ 'Caipirinha' ],
#   [ 'Tom Collins' ],
#   [ 'Painkiller' ],
#   [ 'Bees Knees' ],
#   [ 'Ramos Gin Fizz' ],
#   [ 'Bramble' ],
#   [ 'Vodka Martini' ],
#   [ 'Hanky Panky' ],
#   [ 'Jungle Bird' ],
#   [ 'White Lady' ],
#   [ 'Paloma' ],
#   [ 'Cosmopolitan' ]
# ]
#
# puts "Creating ingredients..."
# ingredient_attributes = [
#   [ 'Vodka' ],
#   [ 'Prosecco' ],
#   [ 'Champagne' ],
#   [ 'Irish Whiskey' ],
#   [ 'Vermouth' ],
#   [ 'Gin' ],
#   [ 'Tequila' ],
#   [ 'Vesper' ],
#   [ 'Cachaca' ],
#   [ 'Tom Collins' ],
#   [ 'Pusser\’s Navy Rum' ],
#   [ 'Bees Knees' ],
#   [ 'Ramos Gin Fizz' ],
#   [ 'Bramble' ],
#   [ 'Vodka Martini' ],
#   [ 'Fernet-Branca' ],
#   [ 'Campari' ],
#   [ 'Cointreau' ],
#   [ 'Paloma' ],
#   [ 'Cosmopolitan' ]
# ]

# cocktails = cocktail_attributes.each do |name|
#   Cocktail.create!(name: name)
# end
# puts "#{Cocktail.count} cocktails added!"
#
# cocktails.each do |cocktail|
#   ingredient_attributes.each do |ingredient|
#     cocktails.ingredients.create!(name: ingredient)
#   end
# end
# puts "#{Ingredients.count} ingredient connections added!"

# Zipping the two newly created arrays together into an new array
# cocktail_ingredient_attributes = cocktail_attributes.zip(ingredient_attributes)
#
# cocktail_attributes.each do |name|
#   Cocktail.create!(name: name)
# end
# puts "#{Cocktail.count} cocktails added!"
#
# Cocktail.all.each do |c|
#   ingredient_attributes.each do |i|
#     c.ingredients.create!(name: i)
#   end
# end

# puts 'Creating cocktails...'
# cocktail_attributes = [
#   { name: 'White Russian'],
#   { name: 'Bellini' },
#   { name: 'Champagne Cocktail' },
#   { name: 'Irish Coffee' },
#   { name: 'Bamboo' },
#   { name: 'Gin Gin Mule' },
#   { name: 'Long Island Ice Tea' },
#   { name: 'Vesper' },
#   { name: 'Caipirinha' },
#   { name: 'Tom Collins' },
#   { name: 'Painkiller' },
#   { name: 'Bees Knees' },
#   { name: 'Ramos Gin Fizz' },
#   { name: 'Bramble' },
#   { name: 'Vodka Martini' },
#   { name: 'Hanky Panky' },
#   { name: 'Jungle Bird' },
#   { name: 'White Lady' },
#   { name: 'Paloma' },
#   { name: 'Cosmopolitan' }
# ]

# puts 'Creating ingredients...'
# ingredient_attributes = [
#   { name: 'Vodka' },
#   { name: 'Prosecco' },
#   { name: 'Champagne' },
#   { name: 'Irish Whiskey' },
#   { name: 'Vermouth' },
#   { name: 'Gin' },
#   { name: 'Tequila' },
#   { name: 'Vesper' },
#   { name: 'Cachaca' },
#   { name: 'Tom Collins' },
#   { name: 'Pusser\’s Navy Rum' },
#   { name: 'Bees Knees' },
#   { name: 'Ramos Gin Fizz' },
#   { name: 'Bramble' },
#   { name: 'Vodka Martini' },
#   { name: 'Fernet-Branca' },
#   { name: 'Campari' },
#   { name: 'Cointreau' },
#   { name: 'Paloma' },
#   { name: 'Cosmopolitan' }
# ]

# Cocktail.create!(cocktail_attributes)
# puts "#{Cocktail.count} cocktails added!"
#
# cocktail = Cocktail.first
# cocktail.ingredients.create!(name: "Vodka")

# Ingredient.create!(ingredient_attributes)
# puts "#{Ingredient.count} ingredients added!"

# Capturing each cocktail hash value into a single array
# cocktail_attripute_values = []
# cocktail_attributes.each do |x|
#   x.each_value do |v1|
#     cocktail_attripute_values << v1
#   end
# end

# Capturing each ingredient hash value into a single array
# ingredient_attripute_values = []
# ingredient_attributes.each do |x|
#   x.each_value do |v2|
#     ingredient_attripute_values <<  v2
#   end
# end

# Zipping the two newly created arrays together into an new array
# cocktail_ingredients = cocktail_attripute_values.zip(ingredient_attripute_values)

# ingredients = [
#                 'Vodka', 'Prosecco', 'Champagne', 'Irish Whiskey',
#                 'Vermouth', 'Gin', 'Tequila', 'Vesper', 'Cachaca',
#                 'Tom Collins', 'Pusser\’s Navy Rum', 'Bees Knees',
#                 'Ramos Gin Fizz', 'Bramble', 'Vodka Martini', 'Fernet-Branca',
#                 'Campari', 'Cointreau', 'Paloma', 'Cosmopolitan'
#               ]

# cocktail_attributes.each do |c|
#   ingredient_attripute_values.each do |i|
#     c.ingredients.create!(name: i)
#   end
# end
# puts "#{Ingredient.count} ingredients added!"
#
# puts 'Creating ingredients...'
