class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @markers = [{ lat: 47.017910, lng: 8.056290 }]
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to contact_path, notice: 'Message sent successfully'
    else
      redirect_to contact_path, alert: 'Cannot send message'
    end
  end
end
