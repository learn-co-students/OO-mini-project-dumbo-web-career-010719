class RecipeCard
	attr_accessor :user, :recipe, :date, :rating

	@@all = []

	def initialize(user, recipe, date, rating)
		@user, @recipe, @date, @rating = user, recipe, date, rating
		@@all << self
	end

	# should return all of the RecipeCard instances
	def self.all
		@@all
	end
end