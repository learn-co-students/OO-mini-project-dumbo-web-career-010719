class Allergen
  @@all = []
  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end
  attr_reader :ingredient, :user
  def self.all
    @@all
  end
end
