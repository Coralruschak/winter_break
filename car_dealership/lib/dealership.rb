class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @inventory = []
  end
end