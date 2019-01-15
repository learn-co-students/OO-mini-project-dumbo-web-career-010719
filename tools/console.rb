require_relative '../config/environment.rb'

jon = User.new("jon")
jesus = User.new("jesus")
pine = Ingredient.new("pine")
apple = Ingredient.new("apple")
severe = Allergen.new(jesus, apple)
pie = Recipe.new
one = RecipeCard.new("monday", 7, jesus, pie)
fish = Recipe.new
two = RecipeCard.new("monday", 8, jesus, fish)
crab = Recipe.new
three = RecipeCard.new("monday", 9, jesus, crab)
soup = Recipe.new
four = RecipeCard.new("monday", 10, jesus, soup)
applepie = RecipeIngredient.new(apple, pie)
crabpine = RecipeIngredient.new(pine, crab)

binding.pry
