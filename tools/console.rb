require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

chicken = Ingredient.new("chicken")
rice = Ingredient.new("rice")
veg = Ingredient.new("vegetable")
fruit = Ingredient.new("fruit")
beef = Ingredient.new("beef")
pork = Ingredient.new("pork")



chicken_recipe = Recipe.new("chicken recipe")
beef_recipe = Recipe.new("beef recipe")
pork_recipe = Recipe.new("pork recipe")
veg_recipe = Recipe.new("veg recipe")

chicken_ri = RecipeIngredient.new(chicken, chicken_recipe)
pork_ri = RecipeIngredient.new(pork, pork_recipe)

red = User.new("redmond")
jon = User.new("jonathan")
sam = User.new("sam")

a1 = Allergen.new(jon, pork)
a2 = Allergen.new(red, veg)
a3 = Allergen.new(sam, beef)
a4 = Allergen.new(sam, beef)

jon_beef_recipe = RecipeCard.new(jon, beef_recipe, 1152018, 5)
jon_chicken_recipe = RecipeCard.new(jon, chicken_recipe, 1162018, 3)
jon_veg_recipe = RecipeCard.new(jon, veg_recipe, 1172018, 4)
jon_pork_recipe = RecipeCard.new(jon, pork_recipe, 1182018, 5)
red_pork_recipe = RecipeCard.new(red, pork_recipe, 2012018, 4)
sam_veg_recipe = RecipeCard.new(sam, veg_recipe, 3132018, 3)
red_pork_recipe = RecipeCard.new(red, pork_recipe, 3142018, 4)

ingredients_array = [fruit, rice]
binding.pry
