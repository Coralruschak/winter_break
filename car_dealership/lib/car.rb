class Car
  attr_reader :name, :monthly_payment, :loan_length, :color

  def initialize(name, monthly_payment, loan_length)
    @name = name
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def make
    @name.scan(/\w+/)[0]
  end

  def model
    @name.scan(/\w+/)[1]
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(paint_color)
    @color = paint_color
  end
end