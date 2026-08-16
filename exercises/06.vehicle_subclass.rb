# frozen_string_literal: true

# parent class Vehicle
class Vehicle
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def to_s
    "Vehicle Name: #{name}\nVehicle Price: #{price}"
  end
end
# child class Bike inherits from parent Vehicle
class Bike < Vehicle
  attr_accessor :dealer
  def initialize(name, price, dealer, percent_price_increase = 0.0)
    super(name, price)
    @dealer = dealer
    @percent_price_increase = percent_price_increase.to_f
  end
  def to_s 
    "Bike Name: #{@name}\nBike Price: #{@price}\nBike Dealer: #{@dealer}"
  end
  def price_increase(percent_price_increase = @percent_price_increase)
    @percent_price_increase = percent_price_increase.to_f
    @price += @price * @percent_price_increase / 100
    puts "\nAfter #{percent_price_increase} percent hike in price:"
    puts self
  end
end

input = "BajajDiscover 58000 BaggaLink 12"
details = input.split(' ')
name = details[0]
price = details[1].to_i
dealer = details[2]
percent_price_increase = details[3].to_f 
Bikeobject = Bike.new(name, price,dealer)
puts Bikeobject
Bikeobject.price_increase(percent_price_increase)
