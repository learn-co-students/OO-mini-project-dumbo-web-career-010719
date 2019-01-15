
class Ingredient
  attr_reader :name, :allergen
  @@all = []
  def initialize(name,allergen=nil)
    @name = name
    @allergen=allergen
    @@all << self
  end

  def self.all
    @@all
  end

  def user_count
    self.users.count
  end

  def users
    Ingredient.all.select do |list|
      list.name == self.name
    end.map do |list|
      list.allergen
    end
  end

  def self.most_common_allergen
    self.all.max_by{|list| list.user_count}
  end
end
