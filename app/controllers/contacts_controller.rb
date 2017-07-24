class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactMailer.contact_me(@contact).deliver_now
      redirect_to root_path, notice: 'Message sent!'
    else
      redirect_to contact_path, alert: 'Something went wrong, please try again'
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
end
