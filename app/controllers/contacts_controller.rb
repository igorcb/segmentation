class ContactsController < ApplicationController

  def index
    @contacts = Contact.paginate(page: params[:page])
  end

  def show
  	@contact = Contact.find(params[:id])
  end

  def new
  	@contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
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

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      flash[:success] = "Contact was successfully updated."
      redirect_to @contact
    else
      render 'edit'
    end
  end  

  def destroy
    Contact.find(params[:id]).destroy
    flash[:success] = "Contact was successfully delete"
    redirect_to contacts_url
  end  

  private
  	def contact_params
  		params.require(:contact).permit(:name, :email, :age, :state, :office_id)
  	end
end
