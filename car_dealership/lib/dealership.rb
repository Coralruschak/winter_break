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
    {"total_value" => total_value, "address" => @address}
  end

  def average_price_of_car
    average = total_value / inventory_count
    average.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(',').reverse.insert(0, "$")
  end

  def cars_sorted_by_price
    @inventory.sort_by do |car|
      car.total_cost
    end
  end

  def inventory_hash
    {"Ford" => cars_by_make("Ford"), "Toyota" => cars_by_make("Toyota"), "Chevrolet" => cars_by_make("Chevrolet")}
  end
end