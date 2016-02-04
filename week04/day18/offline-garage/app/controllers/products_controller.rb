class ProductsController < ApplicationController
	def index
		#Changed to association by user.
		# @user = User.find_by(id: params[:user_id])
		# @products = @user.products.all

		# 
	end

	def show

	end

	def create
		title = params[:title]
		description = params[:description]
		deadline = params[:deadline]

		product = User.produckts.create(title: title, description: description, deadline: deadline)

		redirect_to("/products")
	end

	def destroy
	end

	def new
	end
end
