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
    sum_of_tenents = @@all.reduce(0) do |tenant_sum, building_information|
      tenant_sum + building_information.number_of_tenants
    end
    (sum_of_tenents / @@all.count.to_f).round
  end

  def placard
    "#{@name_of_tenant} - #{@building_address}"
  end

  def self.placards
    @@all.map(&:placard)
    # This works because we have now made a class method that can be called with .placard
    # Therefore this is now the same as .map(&:to_s) in other circumstances
  end

  def tenants_per_floor
    @number_of_tenants / @number_of_floors.to_f
  end
end
