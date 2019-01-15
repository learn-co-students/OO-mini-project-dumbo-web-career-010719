class RecipeIngredient

    attr_reader :ingredient, :recipe
    @@list = []
    def initialize(ingredient, recipe)
        @ingredient = ingredient
        @recipe = recipe
        @@list << self
    end

    def self.all
        @@list
    end
end