class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @markers = [{ lat: 47.017910, lng: 8.056290 }]
  end
end
