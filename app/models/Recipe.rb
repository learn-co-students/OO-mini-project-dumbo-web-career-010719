class Recipe
  attr_reader :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def user_count
    self.users.count
  end

  def self.most_popular
    RecipeCard.all.max_by{|list| list.recipe.user_count}
  end

  def users
    RecipeCard.all.select do |list|
      list.recipe == self
    end.map do |list|
      list.user
    end
  end

  def ingredients
    RecipeIngredient.all.select do |list|
      list.recipe == self
    end.map do |list|
      list.ingredient
    end
  end

     def allergens
      RecipeIngredient.all.select do |list|
         list.recipe == self
      end.map do |list|
        list.ingredient
      end
    end

    def add_ingredients(array)
      RecipeIngredient.all.select do |list|
        list.recipe == self
      end.map! do |list|
        list.ingredient << array
      end
    end

  end
