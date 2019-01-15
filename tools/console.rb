require_relative '../config/environment.rb'

prince = User.new("Prince")
# raymond = User.new("Raymond")
# john = User.new("John")

recipe1 = Recipe.new("fried chicken")
recipe2 = Recipe.new("pizza")
recipe3 = Recipe.new("pho")

rcard1 = RecipeCard.new(20190101, 5, prince, recipe1)
rcard2 = RecipeCard.new(20190102, 6, prince, recipe2)
rcard3 = RecipeCard.new(20190103, 7, prince, recipe3)
# rcard3 = RecipeCard.new(20190104, 7, prince, recipe3)

ing1 = Ingredient.new("cheese")
ing2 = Ingredient.new("chicken")
ing3 = Ingredient.new("noodles")

ing4 = Ingredient.new("broth")
ing5 = Ingredient.new("pepperoni")
ing6 = Ingredient.new("breading")

# ingredients = [ing1, ing2, ing3]
# new_ingredients = [ing4, ing5, ing6]

r_ing1 = RecipeIngredient.new(recipe2, ing1)
r_ing2 = RecipeIngredient.new(recipe2, ing5)
r_ing3 = RecipeIngredient.new(recipe3, ing3)

allergen1 = Allergen.new(prince, ing5)
allergen2 = Allergen.new(prince, ing1)
# allergen3 = Allergen.new(john, ing4)

binding.pry
