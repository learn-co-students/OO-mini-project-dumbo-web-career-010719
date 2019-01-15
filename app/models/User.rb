class User
	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	# should return all of the recipes this user has recipe cards for
	def recipes
		RecipeCard.all.select { |recipe_card| recipe_card.user == self }
	end

	# should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
	def add_recipe_card(recipe, date, rating)
		RecipeCard.new(self, recipe, date, rating)
	end

	# should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
	def declare_allergen(ingredient)
		Allergen.new(self, ingredient)
	end

	# should return all of the ingredients this user is allergic to
	def allergens
		Allergen.all.select { |allergen| allergen.user == self }
	end

	# should return the top three highest rated recipes for this user 
	def top_three_recipes
		recipes.select { |recipe| recipe.rating }.sort_by { |recipe| recipe.rating }.last(3)
	end

	# should return the recipe most recently added to the user's cookbook
	def most_recent_recipe
		recipes.sort { |recipe| recipe.date }.first
	end
end