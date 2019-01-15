class Ingredient
  attr_reader :ingredient
  @@all = []
  def initialize(ingredient)
    @ingredient = ingredient
    @@all << self
  end
  def self.all
    @@all
  end
  def self.most_common_allergen
    newHash = {}
    Allergen.all.each{ |obj|
      newHash[obj.ingredient] ||= 0
      newHash[obj.ingredient] += 1
    }
    maxIng = newHash.max_by{ |k,v| v }[0]
    #Allergen.all.find {|obj| obj.ingredient.ingredient == maxIng}.ingredient
  end
end

# <USER OBJ, INGR OBJ>
# {"Ingredient Name" => 4}
# ["Ingredient Name", 4]
# "Ingredient Name"
