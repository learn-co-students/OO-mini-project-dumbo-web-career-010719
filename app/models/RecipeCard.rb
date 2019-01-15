class RecipeCard
  @@all = []
  def initialize(date, rating, user, recipe)
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe
    @@all << self
  end
  attr_reader :date, :rating, :user, :recipe
  def self.all
    @@all
  end
end
