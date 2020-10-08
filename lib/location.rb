
class Location
    attr_accessor :address, :rent, :restaurant

    @@all = []

    def initialize(address, rent)
        @address = address
        @rent = rent
        @@all << self
    end

    def employees
        Employee.all.select do |employee|
            employee.location == self
        end
    end

    def add_employee(name, pay)
        new_employee = Employee.new(name, pay)
        new_employee.location = self
    end

    def total_pay
        total = 0
        self.employees.each do |employee|
            total += employee.pay
        end
        return total
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
