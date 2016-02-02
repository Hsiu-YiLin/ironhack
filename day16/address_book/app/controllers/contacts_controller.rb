class ContactsController < ApplicationController
	def index
	@contacts = Contact.all
	render "index"
	end

	def new
		render "new"
	end

	def create
		render(:text => "This route is contacts#create.")

	end

end
