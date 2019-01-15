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

    def self.most_popular
        self.all.max_by do |recipes|
            recipes.users.count
        end
    end

    def users
        RecipeCard.all.select do |reccard|
            reccard.recipe == self
        end.map do |reccard|
            reccard.user
        end
    end

    def ingredients
        RecipeIngredient.all.select do |recipe_ingredient|
            recipe_ingredient.recipe == self
        end.map do |recipe_ingredient|
            recipe_ingredient.ingredient
        end
    end

    def allergens
        self.ingredients.select do |ingredient|
            Allergen.all.map do |allergen|
                 allergen.ingredient
            end.include? ingredient
        end
    end

    def add_ingredients(array)
        array.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end

end
