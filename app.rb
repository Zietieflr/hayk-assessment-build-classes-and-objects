require 'pry'



# * Initializes with a name, address, number of floors, and number of tenants
# * The name and number of tenants should be readable and writeable
# * The address should be readable
# * The number of floors should not be readable or writeable
# * The class should keep track of all buildings that are created
# * The class should tell the average number of tenants in a building
# * A building should have a placard method that returns the name and address of the building
# * A building should have a method returns the average number of tenants per floor

class Building 

    @@all = []

    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @@all << self 
    end 

    def name
        @name
    end

    def name= name 
        @name = name 
    end 

    def number_of_tenants
        @number_of_tenants
    end 

    def number_of_tenants= number_of_tenants 
        @number_of_tenants = number_of_tenants
    end 

    def address
        @address 
    end 

    def self.average_tenants
        #average number of tenants in a building 
    end 

    def #Placard method
        #returns name and address of building 
    end 

    def tenants_per_floor 
        #average number of tenants per floor
    end 

end 
