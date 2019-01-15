class Recipe

  attr_accessor

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
      hash = {}
      RecipeCard.all.each do |obj|
        if hash[obj.recipe]
          hash[obj.recipe] += 1
        else
          hash[obj.recipe] = 1
        end
      end
       hash.max_by{|k,v| v}
       hash.keys[0]
  end

  def users
    RecipeCard.all.select do |obj|
      obj.recipe == self
    end.map do |obj|
      obj.user
    end
  end

  def ingredients
    RecipeIngredient.all.select do |obj|
      obj.recipe == self
    end.map do |obj|
      obj.ingredient
    end
  end

  def allergens
    self.ingredients.select do |obj|
      test = false
      Allergen.all.each do |allergen|
        if allergen.ingredient == obj
          test = true
        end
      end
      test
    end
  end

  def add_ingredients(arr)
    arr.each do |obj|
      RecipeIngredient.new(Ingredient.new(obj), self)
      # assuming that we want to associate to recipe not a recipeIngredient instance.
    end
  end



end
