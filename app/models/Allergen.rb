class Allergen

    attr_reader :ingredient, :user

    @@allergies = []
    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@allergies << self
    end

    def self.all
        @@allergies
    end
    
end