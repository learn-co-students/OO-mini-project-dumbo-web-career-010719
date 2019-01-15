require_relative '../config/environment.rb'


user_1 = User.new("Norbert")
user_2 = User.new("Chris")
recipe_1 = Recipe.new("coffee")
recipe_2 = Recipe.new("banana bread")
recipe_3 = Recipe.new("cupcakes")
recipe_4 = Recipe.new("eggs")
recipe_5 = Recipe.new("chicken parm")
recipe_6 = Recipe.new("mashed potatoes")
recipe_7 = Recipe.new("french toast")

recipe_card_1 = RecipeCard.new(user_1, "10-1-2019", 5, recipe_1)
recipe_card_2 = RecipeCard.new(user_2, "10-30-2019", 10, recipe_2)
recipe_card_3 = RecipeCard.new(user_2, "11-15-2019", 7, recipe_3)
recipe_card_4 = RecipeCard.new(user_2, "12-24-2019", 4, recipe_4)
recipe_card_5 = RecipeCard.new(user_2, "9-24-2019", 2, recipe_5)
recipe_card_5 = RecipeCard.new(user_1, "9-24-2019", 2, recipe_5)
recipe_card_6 = RecipeCard.new(user_2, "7-16-2019", 9, recipe_6)

ingredient_1 = Ingredient.new("milk")
ingredient_2 = Ingredient.new("bread")
ingredient_3 = Ingredient.new("cinnamon")
ingredient_4 = Ingredient.new("eggs")

ingredient_array = [ingredient_2, ingredient_3, ingredient_4]

recipe_ingredient_1 = RecipeIngredient.new(recipe_7, ingredient_1)

recipe_7.add_ingredients(ingredient_array)

allergen_1 = Allergen.new("hives", user_2, ingredient_3)
allergen_2 = Allergen.new("hives", user_1, ingredient_3)
allergen_3 = Allergen.new("hives", user_2, ingredient_3)
allergen_4 = Allergen.new("hives", user_1, ingredient_2)


binding.pry
