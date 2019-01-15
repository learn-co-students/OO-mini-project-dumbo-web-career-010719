require_relative '../config/environment.rb'


bob = User.new("bob")
steven = User.new("steve")

peanuts = Ingredient.new("Peanuts")
dairy = Ingredient.new("Milk")
flour = Ingredient.new("Flour")

bob.declare_allergen(peanuts)
steven.declare_allergen(dairy)

spaghetti = Recipe.new
pizza = Recipe.new
burger = Recipe.new
cookie = Recipe.new

pizzaIngredient = RecipeIngredient.new(dairy, pizza)
pizzaIngredient2 = RecipeIngredient.new(peanuts, pizza)
burgerIngredient = RecipeIngredient.new(dairy, burger)
spaghettiIngredient = RecipeIngredient.new(peanuts, spaghetti)
spaghettiIngredient2 = RecipeIngredient.new(flour, spaghetti)
cookieIngredient = RecipeIngredient.new(flour, cookie)
cookieIngredient2 = RecipeIngredient.new(peanuts, cookie)

bobCard1 = bob.add_recipe_card(spaghetti, {:Y=>2015, :M=>9, :D=>12}, 10)
bobCard2 = bob.add_recipe_card(pizza, {:Y=>2011, :M=>4, :D=>1}, 10)
bobCard3 = bob.add_recipe_card(burger, {:Y=>2011, :M=>1, :D=>14}, 10)
bobCard4 = bob.add_recipe_card("recipe4", {:Y=>2012, :M=>11, :D=>23}, 10)



binding.pry
