class Employee
    attr_accessor :name, :pay, :location
    @@all = []
    def initialize(name, pay)
        @name = name
        @pay = pay
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_pay
        total = 0
        @@all.each do |employee|
            total += employee.pay
        end
        return total/@@all.length
    end

end
