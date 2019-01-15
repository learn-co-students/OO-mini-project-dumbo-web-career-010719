class Recipe
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def users
    RecipeCard.all.select{|card| card.recipe == self}.map{|card| card.user}
  end

  def ingredients
    RecipeIngredient.all.select{|recipe_ingredient| recipe_ingredient.recipe == self}.map{|recipe_ingredient| recipe_ingredient.ingredient}
  end

  def allergens
    self.ingredients.select{|ingredient| Allergen.all.map{|allergen| allergen.ingredient}.include?(ingredient)}
  end

  def add_ingredients(ingredients)
    # RecipeIngredient.all.select{|recipe_ingredient| recipe_ingredient.recipe == self}
    # .each{|recipe_ingredient| recipe_ingredient.ingredients.concat(ingredients)}
    ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

  def self.all
    @@all
  end

  def self.most_popular
    self.all.max_by{|recipe| recipe.users.count}
  end
end
