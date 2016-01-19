require "sinatra"
require_relative("lib/calculator.rb")
@@math = Calculator.new

get "/calculate" do
	erb(:calculate)
end

# get "/add" do 
# 	erb(:add)
# end

# get "/subtract" do 
# 	erb(:subtract)
# end

# get "/multiply" do 
# 	erb(:multiply)
# end

# get "/divide" do 
# 	erb(:divide)
# end

post "/calculate" do
		@one = params[:num1].to_f
		@two = params[:num2].to_f
		@string = ""
		@result

	if params[:operation] == "addition"
		 @result = @@math.add(@one,@two)
		 @string = "#{@one} + #{@two} = "
		 
	elsif params[:operation] == "subtraction"
		@result = @@math.subtract(@one,@two)
	elsif params[:operation] == "multiplication"
		@result = @@math.multiply(@one,@two)
	elsif params[:operation] == "division"
		@result = @@math.divide(@one,@two)
	end
	erb(:result)
end


# post "/calculate_add" do
# 	@one = params[:num1].to_f
# 	@two = params[:num2].to_f
# 	@@math.add(@one,@two)
# end

# post "/calculate_subtract" do
# 	@one = params[:num1].to_f
# 	@two = params[:num2].to_f
# 	@@math.subtract(@one,@two)
# end

# post "/calculate_multiple" do
# 	@one = params[:num1].to_f
# 	@two = params[:num2].to_f
# 	@@math.multiply(@one,@two)
# end

# post "/calculate_divide" do
# 	@one = params[:num1].to_f
# 	@two = params[:num2].to_f
# 	@@math.divide(@one,@two)
# end