require_relative '../config/environment.rb'

cris = User.new("Cristian")
cass = User.new("Cassidy")
prince = User.new("Prince")
helen = User.new("Helen")

las = Recipe.new("Lasagna")
stk = Recipe.new("Steak")

chz = Ingredient.new("Cheese")
bf = Ingredient.new("Beef")

stk_rc = RecipeCard.new(cris, stk, 5, "5")
stk_rc_2 = RecipeCard.new(helen, stk, 2, "4")
stk_rc_3 = RecipeCard.new(prince, stk, 7, "4")
las_rc = RecipeCard.new(cass, las, 5, "3")
las_rc_2 = RecipeCard.new(cris, las, 3, "4")

las_ri = RecipeIngredient.new(chz, las)
stk_ri = RecipeIngredient.new(bf, stk)
stk_ri_2 = RecipeIngredient.new(bf, las)

meat_all = Allergen.new(cass, bf)
chz_all = Allergen.new(cris, chz)
meat_all_2 = Allergen.new(cris, bf)
chz_all_2 = Allergen.new(prince, chz)
chz_all_3 = Allergen.new(helen, chz)

ingredient_arr = [chz, bf]

binding.pry
