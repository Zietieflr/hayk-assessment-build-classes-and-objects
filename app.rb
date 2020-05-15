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
  attr_reader :building_address
  attr_accessor :name_of_tenant, :number_of_tenants

  @@all = []

  def initialize(name_of_tenant, building_address, number_of_floors, number_of_tenants)
    @name_of_tenant = name_of_tenant
    @building_address = building_address
    @number_of_floors = number_of_floors
    @number_of_tenants = number_of_tenants
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_tenants
    sum_of_tenents = all.reduce(0) { |tenant_sum, building_information|
      tenant_sum + building_information.number_of_tenants }
    (sum_of_tenents / all.length.to_f).round
  end

  def placard
    [
      @name_of_tenant,
      @building_address,
    ]
  end

  def tenants_per_floor
    @number_of_tenants / @number_of_floors
  end
end

flatiron = Building.new('Flatiron', '1111 St, Denver Co', 4, 20)
my_apartment = Building.new('Highpointe Apartments', '2222 Ave, Aurora Co', 3, 60)
somewhere_else = Building.new('Imagination Station', 'Wingding Lane', 6, 60)
