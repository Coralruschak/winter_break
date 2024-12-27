require 'rspec'
require './lib/car'
require 'pry'

RSpec.describe Car do
  before(:each) do
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
  end
  it 'exists' do
    expect(@car_1).to be_a Car
  end

  it 'has a make' do
    expect(@car_1.make).to eq("Ford")
  end

  it 'has a model' do
    expect(@car_1.model).to eq("Mustang")
  end

  it 'has a monthly payment' do
    expect(@car_1.monthly_payment).to eq(1500)
  end

  it 'has a loan length' do
    expect(@car_1.loan_length).to eq(36)
  end

  it 'has a total cost' do
    expect(@car_1.total_cost).to eq(54000)
  end

  describe '#color' do
    it 'defaults nil' do
      expect(@car_1.color).to eq(nil)
    end

    it 'paint! can set color' do
      @car_1.paint!(:blue)
      expect(@car_1.color).to eq(:blue)
    end
  end
end
