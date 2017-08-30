require 'pry'


# double life agent
# Object itself

#instance OF object

ben = Customer.new('Ben', 36)
Customer.minimum_budget

class Customer
  attr_accessor(:car_budget, :name, :age)
  def initialize(name, age, budget=10000)
    @car_budget = budget
    @name = name
    @age = age
  end

  def self.minimum_budget
    return 8000
  end

  def show_car_budget
	   puts "#{@car_budget}"
     puts @car_budget
  end

  def change_car_budget_amount(amount)
    puts "Before budget has changed"
    self.show_car_budget
	   @car_budget = amount
  end
end

class Car
  attr_reader :rego, :price
  attr_writer :rego
	def initialize(rego, price=8000)
		@rego = rego
    @price = price
		@current_speed = 0
	end

	def set_speed(speed)
		@current_speed = speed
	end
end

customer1 = Customer.new('Roger', 36)
customer2 = Customer.new('Serena', 33, 3000)
customer3 = Customer.new('Venus', 37, 200000)
car1 = Car.new('YUI789')
car2 = Car.new('LKJ654', 50000)
car3 = Car.new('WER345', 150000)

binding.pry
