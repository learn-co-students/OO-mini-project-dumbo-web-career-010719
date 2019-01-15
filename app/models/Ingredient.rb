class Ingredient

  @@all = []
attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    hash = {}
    Allergen.all.each do |obj|
      if hash[obj.ingredient]
        hash[obj.ingredient] += 1
      else
        hash[obj.ingredient] = 1
      end
    end
     hash.max_by{|k,v| v}[0]
  end


end
