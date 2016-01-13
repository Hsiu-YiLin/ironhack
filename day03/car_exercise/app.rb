require_relative("lib/car.rb")
require_relative("lib/wheels.rb")
# require_relative("lib/noise.rb")

car1 = Car.new(10, "shaaaa")
car2 = Car.new(4, "HHHHHHHH")

counter = WheelCounter.new
counter.add_car(car1)
counter.add_car(car2)

puts "Total number of wheels for all vehicles"
puts counter.wheel_count 






