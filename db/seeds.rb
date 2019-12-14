# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  puts 'Cleaning database...'
  Cocktail.destroy_all
  Ingredient.destroy

  puts 'Creating cocktails...'
  cocktail_attributes = [
    { name: 'White Russian' },
    { name: 'Bellini' },
    { name: 'Champagne Cocktail' },
    { name: 'Irish Coffee' },
    { name: 'Bamboo' },
    { name: 'Gin Gin Mule' },
    { name: 'Long Island Ice Tea' },
    { name: 'Vesper' },
    { name: 'Caipirinha' },
    { name: 'Tom Collins' },
    { name: 'Painkiller' },
    { name: 'Bees Knees' },
    { name: 'Ramos Gin Fizz' },
    { name: 'Bramble' },
    { name: 'Vodka Martini' },
    { name: 'Hanky Panky' },
    { name: 'Jungle Bird' },
    { name: 'White Lady' },
    { name: 'Paloma' },
    { name: 'Cosmopolitan' }
  ]

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

Cocktail.create!(cocktail_attributes)
puts "#{Cocktail.count} cocktails added!"
