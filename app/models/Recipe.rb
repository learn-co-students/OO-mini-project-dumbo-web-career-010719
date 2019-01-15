class Recipe
  attr_reader :recipeName
  @@all = []
  def initialize(recipeName)
    @recipeName = recipeName
    @@all << self
  end
  def self.all
    @@all
  end
  def self.most_popular
    newHash = {}
    RecipeCard.all.each{ |obj|
      newHash[obj.recipe] ||= 0
      newHash[obj.recipe] += 1
    }
    maxIng = newHash.max_by{ |k,v| v }[0]
    #RecipeCard.all.find {|obj| obj.recipe.recipeName == maxIng}
  end
  def users
    RecipeCard.all.select { |obj| obj.recipe == self}.map { |obj| obj.user }
  end
  def ingredients
    RecipeIngredient.all.select { |obj| obj.recipe == self}.map { |obj| obj.ingredient }
  end
  def allergens
    Allergen.all.select {|obj| self.ingredients.include?(obj.ingredient)}
  end
  def add_ingredients(arr)
    arr.each { |ing| RecipeIngredient.new(ing, self)}
  end
end
