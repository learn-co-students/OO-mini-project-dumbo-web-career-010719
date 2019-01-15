class Allergen
	attr_reader :ingredient, :user
	
	@@all = []

	def initialize(user, ingredient)
		@user, @ingredient = user, ingredient
		@@all << self
	end

	def self.all
		@@all
	end
end