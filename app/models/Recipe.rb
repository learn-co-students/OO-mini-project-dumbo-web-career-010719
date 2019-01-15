require "pry"
class Recipe
	attr_accessor :recipe_name

	@@all = []

	def initialize(recipe_name)
		@recipe_name = recipe_name
		@@all << self
	end

	def self.all
		@@all
	end

	# return the user instances who have recipe cards with this recipe
	def users
		RecipeCard.all.map do |recipe_card| 
			if recipe_card.recipe == self 
				recipe_card.user 
			end
		end.compact
	end

	# return the recipe instance with the highest number of users (the recipe that has the most recipe cards) !!
	def self.most_popular 
		Recipe.all.max_by { |recipe| RecipeCard.all.select { |recipe_card| recipe == recipe_card.recipe }.count }
	end

	# take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
	def add_ingredients(ingredients_array)
		RecipeIngredient.new(ingredients_array, self)
	end
end