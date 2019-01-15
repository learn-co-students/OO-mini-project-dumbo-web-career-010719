class User
  attr_reader :name
  attr_accessor :allergies
  @@all = []
  def initialize(name)
    @name=name
    @allergies = []
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
     RecipeCard.all.select do |list|
       list.user == self
    end.map do |list|
      list.recipe
    end
  end

  def add_recipe_card(recipe,date,rating)
    RecipeCard.new(self,recipe,date,rating)
  end

   def declare_allergen(ingredient_name)
     Ingredient.all.select do |list|
       list.name == ingredient_name
     end.each do |list|
       @allergies << list
     end
   end

   def allergens
     @allergies
   end

   def top_three_recipes
     RecipeCard.all.select do |list|
       list.user == self
     end.max_by(3){|list| list.rating}
  end

  def most_recent_recipe
    RecipeCard.all.select do |list|
      list.user == self
    end.last
  end
end
