class RecipeCard

    attr_reader :date, :user, :rating, :recipe

    @@recipe_card = []
    def initialize(user, date, rating, recipe)
        @user = user
        @date = date
        @rating = rating
        @recipe = recipe
        @@recipe_card << self
    end

    def self.all
        @@recipe_card
    end
end