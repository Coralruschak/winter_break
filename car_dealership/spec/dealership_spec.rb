require 'rspec'
require './lib/car'
require './lib/dealership'
require 'pry'

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
  end
  
  describe '#initialize' do
    it 'exists' do
      expect(@dealership).to be_a Dealership
    end

    it 'has a name' do
      expect(@dealership.name).to eq("Acme Auto")
    end

    it 'has an address' do
      expect(@dealership.address).to eq("123 Main Street")
    end
  end

  describe '#inventory' do
    it 'defaults an empty array' do
      expect(@dealership.inventory).to eq([])
    end

    it 'default inventory_count is 0' do
      expect(@dealership.inventory_count).to eq(0)
    end

    it 'add_car adds to inventory' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)

      expect(@dealership.inventory).to eq([@car_1, @car_2])
    end

    it 'inventory_count works with cars added to array' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)

      expect(@dealership.inventory_count).to eq(2)
    end
  end
end