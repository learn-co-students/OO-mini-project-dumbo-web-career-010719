class Recipe
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end
    
    def name
      @name
    end

    def users
        result=[]
        RecipeCard.all.each do |rc|
            if rc.recipe == self
                result<<rc.user
            end
        end
        result
    end

    def self.all
      @@all
    end

    def user_count
        users.count
    end

    def ingredients
      result=[]
        RecipeIngredient.all.each do |ri|
            if ri.recipe == self
                result<<ri.ingredient
            end
        end
        result.uniq
    end

    def allergens
      # ingredients.select do |ingredient|
      #       Allergen.all.map do |aller|
      #         ingredient == aller.ingredient
      #       end
      #  end
      result=[]
      all_ingredients=ingredients
      all_ingredients.each do |ingredient|
        Allergen.all.each do |allergen|
            if ingredient  == allergen.ingredient
                  result<<allergen.ingredient
            end
        end
      end
      result.uniq
    end

    def self.most_popular
        Recipe.all.max_by {|recipe| recipe.user_count}
    end

      def add_ingredients(arr_ingre)
      result=[]
        for ingredient in arr_ingre
            result<< RecipeIngredient.new(ingredient, self)
          #  puts"#{r1.ingredient.name} , #{self.name}"
        end
        result
    end

end