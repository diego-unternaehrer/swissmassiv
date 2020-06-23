class PagesController < ApplicationController
  def home
  end

  def about
  end

  def ski
    @skis = Spree::Products.all
  end
end
