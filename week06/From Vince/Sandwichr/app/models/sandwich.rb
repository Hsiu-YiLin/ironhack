class Sandwich < ActiveRecord::Base
	has_many :sandwich_ingredients
	has_many :ingredients, through: :sandwich_ingredients, after_add: :total

	private
	def total(ingredients)

		self.total_calories+=ingredients.calories
		self.save

		# sandwich = Sandwich.find_by(id: params[:id])
		# sandwich.ingredients.each do |calorie|
			
			
		# 	sandwich.calorie_count += calorie.calories 
		# end
	
		# render json: sandwich.calorie_count
	end
end
