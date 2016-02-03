class ContactsController < ApplicationController
	def index
	contact_all = Contact.all


	@contacts = contact_all.sort{ |x,y| x.name <=> y.name }

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
