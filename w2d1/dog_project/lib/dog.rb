class Dog

    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(new_age)
        @age = new_age
    end

    def bark
        if @age > 3
           @bark.upcase
        else
           @bark.downcase 
        end
   end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(string)
        isFavorite = false
        @favorite_foods.each do |food|
            if food.downcase == string.downcase
                isFavorite = true
            end
        end
        isFavorite
    end
end
