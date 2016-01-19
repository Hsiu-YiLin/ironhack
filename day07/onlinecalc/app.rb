require "sinatra"
require "pry"
require_relative("lib/calculator.rb")
@@math = Calculator.new

get "/add" do 
	erb(:add)
end

get "/subtract" do 
	erb(:subtract)
end

get "/multiply" do 
	erb(:multiply)
end

get "/divide" do 
	erb(:divide)
end

post "/calculate_add" do
	@one = params[:num1].to_f
	@two = params[:num2].to_f
	binding.pry
	@@math.add(@one,@two)
end

post "/calculate_subtract" do
	@one = params[:num1].to_f
	@two = params[:num2].to_f
	@@math.subtract(@one,@two)
end

post "/calculate_multiple" do
	@one = params[:num1].to_f
	@two = params[:num2].to_f
	@@math.multiply(@one,@two)
end

post "/calculate_divide" do
	@one = params[:num1].to_f
	@two = params[:num2].to_f
	@@math.divide(@one,@two)
end