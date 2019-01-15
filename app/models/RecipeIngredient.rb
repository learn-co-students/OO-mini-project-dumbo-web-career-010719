class RecipeIngredient
	attr_reader :ingredient, :recipe

	@@all = []

	def initialize(ingredient, recipe)
		@ingredient, @recipe = ingredient, recipe
		@@all << self
	end

	def self.all
		@@all
	end
end