class Ingredient
	attr_reader :ingredient_name

	@@all = []

	def initialize(ingredient_name)
		@ingredient_name = ingredient_name
		@@all << self
	end

	def self.all
		@@all
	end

	# should return the ingredient instance that the highest number of users are allergic to !!
	def self.most_common_allergen
		# Recipe.all.max_by { |recipe| RecipeCard.all.select { |recipe_card| recipe == recipe_card.recipe }.count }
		Ingredient.all.max_by { |ingredient| Allergen.all.select { |allergen| ingredient == allergen.ingredient }.count }
	end
end
