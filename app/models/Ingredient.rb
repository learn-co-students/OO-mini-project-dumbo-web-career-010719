class Ingredient

  attr_reader :ing_name

  @@all = []

  def initialize(ing_name)
    @ing_name = ing_name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select {|all| all.ingredient == self}
  end

  def allergencount
    self.allergens.count
  end

  def self.most_common_allergen
    most_all = Allergen.all.max_by {|x| x.ingredient.allergencount}
    most_all.ingredient
  end

end
