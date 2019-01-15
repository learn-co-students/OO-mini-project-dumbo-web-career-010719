require_relative '../config/environment.rb'


bob = User.new("bob")
steven = User.new("steve")
peanuts = Ingredient.new("Peanuts")
dairy = Ingredient.new("Milk")
bob.declare_allergen(peanuts)
bob.declare_allergen(dairy)
spaghetti = Recipe.new
spaghettiIngredient = RecipeIngredient.new(peanuts, spaghetti)
bobCard1 = bob.add_recipe_card(spaghetti, {:Y=>2015, :M=>9, :D=>12}, 10)
bobCard2 = bob.add_recipe_card("recipe2", {:Y=>2011, :M=>4, :D=>1}, 10)
bobCard3 = bob.add_recipe_card("recipe3", {:Y=>2011, :M=>1, :D=>14}, 10)
bobCard4 = bob.add_recipe_card("recipe4", {:Y=>2012, :M=>11, :D=>23}, 10)



binding.pry
