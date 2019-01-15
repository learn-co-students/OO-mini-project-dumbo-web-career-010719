require_relative '../config/environment.rb'

# binding.pry

jo = User.new("Joe")
king = User.new("King")
queen = User.new("Queen")

 garlic = Ingredient.new("Garlic")
 rice = Ingredient.new("Rice")
 chicken = Ingredient.new("Chicken")
 pineapple = Ingredient.new("Pineapple")
 curry = Ingredient.new("Curry")
 onion = Ingredient.new("Onion")
 peas = Ingredient.new("Peas")
 pork = Ingredient.new("Pork")
 ice = Ingredient.new("Ice")
 cream = Ingredient.new("Cream")
 waffle_cone = Ingredient.new("Waffle Cone")
 cheese = Ingredient.new("Cheese")
 spices = Ingredient.new("Spices")
 eggs = Ingredient.new("Eggs")


fried_rice = Recipe.new("Fried Rice")
curry = Recipe.new("Curry")
ice_cream = Recipe.new("Ice Cream")

fried_rice.add_ingredients([garlic, rice, chicken, curry])
curry.add_ingredients([onion, garlic, cream, waffle_cone])
ice_cream.add_ingredients([eggs, spices, cheese, garlic])

king.add_recipe_card(fried_rice, 5, 5)
jo.add_recipe_card(fried_rice, 7, 1)
queen.add_recipe_card(fried_rice, 2, 4)
queen.add_recipe_card(curry, 5, 8)
queen.add_recipe_card(ice_cream, 1, 16)
jo.add_recipe_card(fried_rice, 9, 86)

jo.declare_allergen(rice)
jo.declare_allergen(chicken)
king.declare_allergen(chicken)
queen.declare_allergen(garlic)
jo.declare_allergen(curry)
