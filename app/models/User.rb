class User

  attr_reader :user_name

  @@all = []

  def initialize(user_name)
    @user_name = user_name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipecards
    RecipeCard.all.select {|rc| rc.user == self}
  end

  def recipes
    self.recipecards.map {|rc| rc.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select {|allerg| allerg.user == self}
  end

  def top_three_recipes
    self.recipecards.max_by(3) {|rc| rc.rating}
  end

  def most_recent_recipe
    self.recipecards.max_by {|rc| rc.date}
  end

end
