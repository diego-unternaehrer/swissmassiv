class PagesController < ApplicationController
  def home
  end

  def about
  end

  def skis
  end

  def personalised
  end

  def mieten
  end

  def service
  end

  def schreiner
    @contact = Contact.new
  end

  def schreiner_send
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message sent successfully'
      redirect_to "/schreiner"
    else
      flash.now[:error] = 'Cannot send message'
      redirect_to "/schreiner"
    end
  end

end
