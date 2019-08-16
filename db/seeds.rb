#  # db/seeds.rb
require 'json'
require 'rest-client'

puts 'Cleaning db'

Cocktail.destroy_all

puts 'Cleaning '

Ingredient.destroy_all

puts 'Cleaning doses database'

Dose.destroy_all

puts 'Adding new ingredients to database.'

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

Cocktail.create(name: "mojito", photo: "https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2013/11/mojito-cocktails.jpg?itok=7ZS6egg_")
Cocktail.create(name: "bloody mary", photo: "https://www.maliburumdrinks.com/globalassets/images/cocktail-recipe-images/malibu-island-cosmo.png/CocktailHero")
Cocktail.create(name: "blue lagon", photo: "https://assets.afcdn.com/recipe/20180705/80346_w1024h768c1cx1727cy777cxt0cyt0cxb3883cyb2588.jpg")
Cocktail.create(name: "balck lagon", photo: "https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2017/09/manhattan-cocktail.jpg?itok=Vm4nj_gD")
# Cocktail.create(name: "lagon", photo: "https://assets.afcdn.com/recipe/20180705/80274_w1024h768c1cx2378cy1278cxt0cyt0cxb4799cyb3199.jpg")
