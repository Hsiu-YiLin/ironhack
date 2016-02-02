class ContactsController < ApplicationController
	def index
	@contacts = Contact.all
	render "index"
	end

	def new
		render "new"
	end

	def create
        contact = Contact.new(
	      :name => params[:contact][:name],
	      :address => params[:contact][:address],
	      :phone_number => params[:contact][:phone],
	      :email => params[:contact][:email]
	      )
        contact.save
        redirect_to("/")
	end
end
