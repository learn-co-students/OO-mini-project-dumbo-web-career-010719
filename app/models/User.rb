class User
  @@all = []
  def initialize
    @@all << self
  end
  def self.all
    @@all
  end
  def recipecard
    RecipeCard.all.select {|recipecard| recipecard.user == self}
  end
  def recipes
    self.recipecard.map {|recipecard| recipecard.user}
  end
  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, self, recipe)
  end
  def declare_allergen(allergen)
    Allergen.new(self, allergen)
  end
  def allergens
    Allergen.all.select {|allergen| allergen.user == self}.map {|allergen| allergen.ingredient}
  end
  def top_three_recipes
    self.recipecard.max_by(3) do |recipecard|
        recipecard.rating
    end.map {|recipecard| recipecard.recipe}
  end

  def most_recent_recipe
    self.recipecard[-1].recipe
  end
end
