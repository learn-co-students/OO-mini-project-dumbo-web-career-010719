class Ingredient
  @@all = []
  def initialize
    @@all << self
  end
  def self.most_common_allergen
    Allergen.all.max_by do |allergen|
      amount = 0
      Allergen.all.each do |aller|
        if aller.ingredient == allergen.ingredient
          amount +=1
        end
      end
      amount
    end
  end

end
