require_relative '../config/environment.rb'


bob = User.new("bob")
steven = User.new("steve")
peanuts = Ingredient.new("Peanuts")
dairy = Ingredient.new("Milk")
bob.declare_allergen(peanuts)
bob.declare_allergen(dairy)
spaghetti = Recipe.new
spaghettiIngredient = RecipeIngredient.new(peanuts, spaghetti)
bobCard1 = bob.add_recipe_card(spaghetti, 1, 10)
bobCard2 = bob.add_recipe_card("recipe2", 2, 10)
bobCard3 = bob.add_recipe_card("recipe3", 3, 10)
bobCard4 = bob.add_recipe_card("recipe4", 4, 10)



binding.pry
