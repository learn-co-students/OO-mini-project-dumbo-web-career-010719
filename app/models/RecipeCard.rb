class RecipeCard
    @@all=[]
    def initialize(user, recipe, date, rating)
        @user=user
        @recipe=recipe
        @date=date
        @rating=rating
        @@all << self
    end

    def self.all
        @@all
    end

    def user
        @user
    end

    def recipe
        @recipe
    end

    def date
        @date
    end
    
    def rating
        @rating
    end
end
