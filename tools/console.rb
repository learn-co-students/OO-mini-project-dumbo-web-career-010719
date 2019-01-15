require_relative '../config/environment.rb'


user1 = User.new
user2 = User.new
incre = Ingredient.new
incre2 = Ingredient.new
incre3 = Ingredient.new
user1.declare_allergen(incre)
user1.declare_allergen(incre2)
user2.declare_allergen(incre3)
rec1 = Recipe.new
list = [incre, incre2, incre3]
rec1.add_ingredients(list)
card1 = RecipeCard.new("10", 2, user1, rec1)
rec2 = Recipe.new
incre4 = Ingredient.new
incre5 = Ingredient.new
incre6 = Ingredient.new
list2 = [incre4, incre5, incre6]
rec2.add_ingredients(list2)
user2.add_recipe_card(rec2, 900, 900)
user1.add_recipe_card(rec2, 900, 900)
binding.pry
