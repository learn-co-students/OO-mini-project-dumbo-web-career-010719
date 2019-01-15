class RecipeIngredient
  @@all = []
  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end
  attr_reader :recipe, :ingredient
  def self.all
    @@all
  end
end
