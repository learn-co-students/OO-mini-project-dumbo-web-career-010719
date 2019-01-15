class Ingredient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def allergens
    Allergen.all.select{|allergen| allergen.ingredient == self}
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    # Allergen.all.select{|allergen| allergen.ingredient == self}
    self.all.max_by{|ingredient| ingredient.allergens.count}
  end
end
