class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @inventory = []
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory.count
  end
end