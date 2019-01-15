class Ingredient
    
    @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end

    def name
        @name
    end

    def self.all
      @@all
    end
    
    def users
        result=[]
        Allergen.all.each do |aler|
            if aler.ingredient == self
                result<<aler.user
             end
        end
      result
    end

    def user_count
         users.count
    end

    def self.most_common_allergen
      self.all.max_by {|aller| aller.user_count} 
    end
    
  end