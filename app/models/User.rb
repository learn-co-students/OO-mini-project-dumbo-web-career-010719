class User
    @@all=[]

    def initialize(name)
        @name=name
        @@all<<self
    end

    def name
        @name
    end

    def self.all
        @@all
    end

    def recipes
        RecipeCard.all.select {|recipe| recipe.user == self}.map {|rc| rc.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergen(ingredient)
        Allergen.new(self, ingredient)
    end

    def allergens
        Allergen.all.select do |allgern| 
            allgern.user == self
        end.map do |aller| 
                aller.ingredient
            end 
    end

    def top_three_recipes
        result={}
        RecipeCard.all.each do |rc|
            result[rc]=rc.rating
        end
        result.each.max_by(3) {|key, value| value}
    end

    def most_recent_recipe
        recipes.last
    end

    def user_recipe_ingredients
      arr_recipes=recipes
      arr_recipes.collect do |recipe|
         recipe.ingredients
      end.uniq
    end

    def safe_recipes
      #  puts Allergen.all.inspect
       arr_ingrdient=user_recipe_ingredients
       user_allergen=allergens
       result=arr_ingrdient.flatten.reject do |ingredient|
          #  ingredient.inspect
            user_allergen.any? do |aller|
              #  puts aller.inspect
                aller == ingredient
            end
       end
        
       RecipeIngredient.all.find do |ri|
            ri.ingredient == result[0]
       end.recipe
    end

end