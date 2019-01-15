class Recipe
  @@all = []
  def initialize
    @@all << self
  end
  def add_ingredients(arr)
    arr.each {|num| RecipeIngredient.new(self, num)}
  end
  def ingredients
    RecipeIngredient.all.select do |recipe|
      recipe.recipe == self
    end.map {|ingredient| ingredient.ingredient}
  end
  def allergens
    self.ingredients.select do |ingredient|
      test = false
      Allergen.all.each do |allergen|
        if allergen.ingredient == ingredient
          test = true
        end
      end
      test
    end
  end
  def users
    RecipeCard.all.select {|obj| obj.recipe == self}.map {|obj| obj.user}
  end
  def self.most_popular
    RecipeCard.all.max_by do |recipecard|
      count =0
      @@all.each do |recipe|
        if recipecard.recipe == recipe
          count += 1
        end
      end
      count
    end
  end
end
