class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory.count
  end

  def has_inventory?
    if inventory_count == 0
      false
    end
  end

  def cars_by_make(car_make)
    @inventory.find_all do |car|
      car.make == car_make
    end    
  end

  def total_value
    @inventory.sum do |car|
      car.total_cost
    end
  end

  def details
    
  end
end