class RecipeCard

    attr_accessor :user, :date, :rating, :recipe

    @@all = []

    def initialize(user, date, rating, recipe)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end



end
