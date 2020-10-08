
class Location
    attr_accessor :address, :rent, :restaurant

    @@all = []

    def initialize(address, rent)
        @address = address
        @rent = rent
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_addresses
        @@all.map do |location|
            location.address
        end
    end

end
