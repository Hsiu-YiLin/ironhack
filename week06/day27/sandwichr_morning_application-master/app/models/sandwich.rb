class Sandwich < ActiveRecord::Base
	has_many :sandwich_ingredients
	has_many :ingredients, through: :sandwich_ingredients, after_add: :total

	private
	def total(ingredients)
		self.total_calories+=ingredients.calories
		self.save
	end
end
