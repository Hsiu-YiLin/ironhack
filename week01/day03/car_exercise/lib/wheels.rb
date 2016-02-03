class WheelCounter

	def initialize
		@cars=[]
	end

	def add_car(car)
		@cars.push(car)
	end

	def wheel_count
		counter = 0
		@cars.each {|car| counter += car.wheels}
		counter
	end
end