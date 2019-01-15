class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        RecipeCard.all.select do |reccard|
            reccard.user == self
        end.map do |recipe|
            recipe.recipe
        end
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, date, rating, recipe)
    end

    def declare_allergen(ingredient)
        Allergen.new("placeholder", self, ingredient)
    end

    def allergens
        Allergen.all.select do |allergy|
             self == allergy.user
        end.map do |allergy|
            allergy.ingredient
        end
    end

    def top_three_recipes
        recip = RecipeCard.all.select do |reccard|
            reccard.user == self
        end.sort_by do |reccard|
            reccard.rating
        end
        recip[-3..recip.size]
    end

    def most_recent_recipe
        self.recipes[-1]
    end

end
