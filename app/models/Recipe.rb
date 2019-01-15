class Recipe

  attr_reader :recipe_name

  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipecards
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
  end

  def users
    self.recipecards.map {|recipe_card| recipe_card.user}
  end

  def user_count
    self.users.count
  end

  def ingredients
    recipes = RecipeIngredient.all.select {|recipe_ing| recipe_ing.recipe == self}
    recipes.map {|recipe| recipe.ingredient}
  end

  def self.most_popular
    RecipeCard.all.max_by {|rc| rc.recipe.user_count}
  end

  def add_ingredients(ingredient_arr)
    RecipeIngredient.new(ingredient_arr, self)
  end

  def allergens
    alls = RecipeIngredient.all.select {|rec| rec.ingredient.allergens}
    alls.select {|rc| rc.recipe == self}
  end
end
