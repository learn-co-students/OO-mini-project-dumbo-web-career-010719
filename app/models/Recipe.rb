class Recipe

    @@recipe = []
    def initialize
        @@recipe << self
    end

    def users
        RecipeCard.all.select do |recipecard|
            recipecard.recipe == self 
        end.map do |recipecard|
            recipecard.user
        end
    end

    def ingredients
        RecipeIngredient.all.select do |ingredient|
            ingredient.recipe == self 
        end.map do |ingredient|
            ingredient.ingredient
        end
    end

    def self.all
        @@recipe
    end

    def allergens
        container = []
        self.ingredients.each do |ingredient|
            Allergen.all.each do |allergy|
                if allergy.ingredient == ingredient
                    container << ingredient
                end
            end
        end
        container
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            @@recipe << RecipeIngredient.new(ingredient, self)
        end
    end
end