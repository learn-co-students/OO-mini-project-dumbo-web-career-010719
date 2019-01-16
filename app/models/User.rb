class User

    @@all=[]
    def initialize(name)
        @name=name
        @@all << self
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    def recipes
        RecipeCard.all.select {|recipe| recipe.user == self}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergen(ingredient)
        Allergen.new(self, ingredient)
    end

    def allergens
        Allergen.all.select do |allgern|
            allgern.user == self
        end.map do |aller|
                aller.ingredient
            end
    end

    def top_three_recipes
        result={}
        RecipeCard.all.each do |rc|
            result[rc]=rc.rating
        end
        result.each.max_by(3) {|key, value| value}
    end

    def most_recent_recipe
        recipes.last
    end

end
