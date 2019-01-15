class User

    @@users = []
    def initialize(name)
        @user = name
        @@users << self
    end

    def self.all
        @@user
    end

    def recipes
        RecipeCard.all.select do |recipe|
            recipe.user == self
        end
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, date, rating, recipe)
    end

    def declare_allergen(ingredient)#works
        Allergen.new(self, ingredient)
    end

    def allergens#works
        Allergen.all.select do |allergy|
            allergy.user == self
        end.map {|allergy| allergy.ingredient}
    end

    def top_three_recipes
       top_three = RecipeCard.all.select do |card|
            card.user == self
        end.sort_by {|card| card.rating}
        if top_three.count < 3
            return top_three.map{|card| card.recipe}
        end
        top_three[-3..-1].map{|card| card.recipe}
    end

    def most_recent_recipe
        top_three = RecipeCard.all.select do |card|
            card.user == self
        end.sort_by{|card| card.date}
        top_three[-1].recipe
    end
end