
class Restaurant
    attr_accessor :name

    @@all = []
    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def locations
        Location.all.select do |location|
            location.restaurant == self
        end
    end

    def add_location(address, rent)
        new_location = Location.new(address, rent)
        new_location.restaurant = self
    end

    def total_rent
        total_rent = 0
        self.locations.each do |location|
            total_rent += location.rent 
        end
        return total_rent
    end

end
