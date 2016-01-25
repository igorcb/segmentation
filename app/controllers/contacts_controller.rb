class ContactsController < ApplicationController

  def show
  	@contact = Contact.find(params[:id])
  end

  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
  	if @contact.save
  		flash[:success] = "Contact was successfully created."
  		redirect_to @contact
  	else
  		render 'new'
  	end
  end

  private
  	def contact_params
  		params.require(:contact).permit(:name, :email, :age, :state, :office)
  	end
end
