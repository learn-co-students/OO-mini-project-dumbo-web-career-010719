class Ingredient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        hash = Hash.new(0)

        Allergen.all.each do |allergen|
            hash[allergen.ingredient] += 1
        end

        hash.max_by {|k, v| v}[0]
    end

end
