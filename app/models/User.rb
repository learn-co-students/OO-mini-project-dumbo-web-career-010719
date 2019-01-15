class User
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def recipes
    RecipeCard.all.select do |obj|
      obj.user = self
    end.map do |obj|
      obj.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |obj|
      obj.user == self
    end.map do |obj|
      obj.ingredient.name
    end
  end

  def top_three_recipes
    arr = RecipeCard.all.select do |obj|
      obj.user == self
    end.max_by(3) {|obj| obj.rating}.map do |obj|
      obj.recipe
    end
  end

  def most_recent_recipe
    RecipeCard.all.select do |obj|
      obj.user == self
    end.map do |obj|
      obj.recipe
    end[-1]
  end


end
