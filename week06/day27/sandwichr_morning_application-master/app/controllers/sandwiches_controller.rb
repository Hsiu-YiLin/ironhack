class SandwichesController < ApplicationController
	def index
	  sandwiches = Sandwich.all
	  render json: sandwiches
	end

	def create
	  sandwich = Sandwich.create(sandwich_params)
	  render json: sandwich
	end

	def show
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  render json: sandwich
	end

	def update
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  sandwich.update(sandwich_params)
	  render json: sandwich
	end

	def destroy
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  sandwich.destroy
	  render json: sandwich
	end

	def add_ingredients
		sandwich = Sandwich.find_by(id: params[:id])
	 	ingredient = Ingredient.find_by(id: params[:ingredient_id])
		@new_sandwich = sandwich.ingredients.push(ingredient)
		
		unless sandwich
			render json: {error: "sandwich with igredient not found"},
				status: 404
				return
			end

		render json: sandwich.to_json({:include => :ingredients})
	end


	private

	def sandwich_params
	  params.require(:sandwich)
	    .permit(:name, :bread_type)
	end
end
