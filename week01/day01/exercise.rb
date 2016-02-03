class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name=name
		@city=city
		@capacity = capacity
		@price = price
	end
end

homes = [
	Home.new("Nizar's place", "San Juan", 2, 24),
	Home.new("Fernando's place", "Seville", 5, 47),
	Home.new("Josh's place", "Pittsburgh", 3, 41),
	Home.new("Gonzalo's place", "Målaga", 2, 45),
	Home.new("Ariel's place", "San Juan", 4, 49),
]

# homes.each {|home|puts "#{home.name} in #{home.city}\nPrice: $#{home.price} a night"}

cities = homes.map do |hm|
  hm.city
end

city_prices=homes.reduce(0.0){|total,home|total + home.price}
puts "The average city prices is:"
puts city_prices/homes.length


total_capacities = homes.reduce(0.0) {|sum, hm| sum + hm.capacity}

puts "The average capacity is:"
puts total_capacities / homes.length