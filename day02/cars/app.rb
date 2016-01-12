require_relative("lib/car.rb")
require_relative("lib/flyingcar.rb")
require_relative("lib/invisiblecar.rb")
#variable and methods names should be lowercase_with_underscores
# mazda6 = Car.new 
# mazda6.startcar

my_car = Car.new("white","VW","Wrumm Wrumm")
puts my_car.startcar

your_car = Car.new("blue", "not a VW", "Broem")
puts your_car.startcar

that_guys_car= Car.new("green","Toyota", "Feeeeeeeeeew")
puts that_guys_car.startcar

future_car = FlyingCar.new("skyblue","Tesla","schoooom")
puts future_car.startcar
future_car.fly

invisiblecar= InvisibleCar.new("orange","M","BUUUUUURRR")
invisiblecar.startcar