require_relative '../config/environment.rb'
cake=Recipe.new("CAKE")
iceCream=Recipe.new("IceCream")
john=User.new("John")
lisa=User.new("Lisa")
yellowC=Ingredient.new("yellow chocolate")
whiteC=Ingredient.new("white chocolate")
greenC=Ingredient.new("green chocolate")
arr_ingredient=[yellowC, whiteC, greenC]
rc1=RecipeCard.new(john, cake, "2017", 5)
rc2=RecipeCard.new(john, iceCream, "2016", 6)
rc4=RecipeCard.new(john, cake, "2018", 7)
rc3=RecipeCard.new(lisa, cake, "2019", 9)
ri1=RecipeIngredient.new(whiteC, cake)
ri2=RecipeIngredient.new(yellowC, iceCream)
ri3=RecipeIngredient.new(greenC, cake)
ri4=RecipeIngredient.new(yellowC, cake)
allergen1=Allergen.new(john, yellowC)
allergen2=Allergen.new(john, yellowC)
allergen3=Allergen.new(lisa, yellowC)
allergen4=Allergen.new(lisa, whiteC)
allergen5=Allergen.new(john, greenC)
# cake.add_ingredient(arr_ing)
#  cake.ingredients
# john.add_recipe_card(cake, "2010" , 9)
# john.most_recent_recipe
# john.most_recent_recipe
# john.declare_allergen(yellowC)
Allergen.all
binding.pry
