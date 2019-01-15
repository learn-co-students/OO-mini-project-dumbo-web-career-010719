class Ingredient
    attr_reader :food, :user
    @@food_all = []
    @count = Hash.new(0)
    def initialize(food)
        @food = food
        @@food_all << self 
    end

    def self.all
        @@food_all
    end

    def self.most_common_allergen
        Ingredient.all.each do |ingredient|
            Allergen.all.each do |allergy|
                if allergy.ingredient == ingredient
                    @count[ingredient] += 1
                end#if
            end#allergy
        end#ingrdient
        @count.max_by{|k,v| v}
    end
end
