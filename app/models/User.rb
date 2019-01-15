class User
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def recipes
    RecipeCard.all.select { |obj| obj.user = self}.map {|obj| obj.recipe}
  end
  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end
  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end
  def allergens
    Allergen.all.select { |obj| obj.user == self}.map { |obj| obj.ingredient }
  end
  def top_three_recipes
    RecipeCard.all.select{ |obj| obj.user == self}.max_by(3) {|obj| obj.rating}
  end
  def most_recent_recipe
    RecipeCard.all.select{ |obj| obj.user == self}.sort{ |obj| obj.date }.last.recipe
  end
end
