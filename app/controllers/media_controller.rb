class MediaController < ApplicationController
  def index
    @media = Medium.all
  end

  def new
    @medium = Medium.new
  end

  def create
    @medium = Medium.new(personalised_params)
    if @medium.save
      redirect_to media_path, notice: 'Erfolgreich erstellt.'
    else
      render :new
    end
  end

  def destroy
    @medium = Medium.find(params[:id])
    @medium.destroy
    redirect_to media_path, notice: 'Erfolgreich entfernt.'
  end

  private
    def personalised_params
      params.require(:medium).permit(:link, :photo, :title)
    end
end
