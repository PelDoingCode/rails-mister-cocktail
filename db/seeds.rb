#  # db/seeds.rb
require 'json'
require 'rest-client'

puts 'Cleaning db'

Cocktail.destroy_all

puts 'Cleaning '

Ingredient.destroy_all

puts 'Cleaning doses database'

Dose.destroy_all

puts 'Adding new ingredients to database...'

response = RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(response)
ingredients['drinks'].each do |ingredient|
  Ingredient.create!(
    name: ingredient['strIngredient1']
  )
end

puts 'Ingredients Added!'

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "black lemon")
Ingredient.create(name: "banana")
Ingredient.create(name: "apple")
Ingredient.create(name: "orange")
