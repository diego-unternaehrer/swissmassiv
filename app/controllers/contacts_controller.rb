class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @markers = [{ lat: 47.017910, lng: 8.056290 }]
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message sent successfully'
      redirect_to contact_path
    else
      flash.now[:error] = 'Cannot send message'
      redirect_to contact_path
    end
  end
end
