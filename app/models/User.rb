class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.select{|card| card.user == self}.map{|card| card.recipe}
  end

  def allergens
    Allergen.all.select{|allergen| allergen.user == self}.map{|allergen| allergen.ingredient}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def top_three_recipes
    RecipeCard.all.select {|card| card.user == self}.sort_by{|card| card.rating}.map{|card| card.recipe}.last(3)
  end

  def most_recent_recipe
    RecipeCard.all.select {|card| card.user == self}.sort_by{|card| card.date}.last.recipe
  end

  def safe_recipes
    # self.allergens
    #Recipe.ingredients
    #self.allergens
    # recipe.ingredients & self.allergens
    # Recipe.all.select {|recipe| recipe.ingredients & self.allergens}
    Recipe.all.select{|recipe| (recipe.ingredients & self.allergens).count == 0}
  end

  def self.all
    @@all
  end
end
