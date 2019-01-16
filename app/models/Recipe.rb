class Recipe

    @@all=[]
    def initialize(name)
        @name=name
        @@all << self
    end

    def name
      @name
    end

    def users
        result=[]
        RecipeCard.all.each do |rc|
            if rc.recipe == self
                result << rc.user
            end
        end
        result
    end

    def self.all
      @@all
    end

    def ingredients
        result=[]
        RecipeIngredient.all.each do |ri|
            if ri.recipe == self
                result << ri.ingredient
            end
        end
        result
    end

    def user_count
        users.count
    end

    def self.most_popular
        Recipe.all.max_by {|recipe| recipe.user_count}
    end

    def ingredients
      RecipeIngredient.all.select do |ri|
        ri.recipe == self
      end.map do |ing|
        ing.ingredient
      end
    end

    def allergens
      # we got the array of ingredients ###
      # we are trying to get an array of allergens.ingredient ###
      # Now, we need to compare what are allergens.ingredient in ingredient array
        # we have two arrays
        ingredients.select do |ingredient|
            Allergen.all.map do |aller|
              if ingredient == aller.ingredient
            end
          end
        end

      def add_ingredient(arr_ingre)
        results = []
        for ingredient in arr_ingre
            results << RecipeIngredient.new(ingredient, self)

          #  puts"#{r1.ingredient.name} , #{self.name}"
        end
    end
end
