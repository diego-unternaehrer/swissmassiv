class PersonalisedsController < ApplicationController

  def index
    @personaliseds = Personalised.all
  end

  def new
    @personalised = Personalised.new
  end

  def create
    @personalised = Personalised.new(personalised_params)
    if @personalised.save
      redirect_to personalised_path, notice: 'Erfolgreich erstellt.'
    else
      render :new
    end
  end

  def destroy
    @personalised = Personalised.find(params[:id])
    @personalised.destroy
    redirect_to personalised_path, notice: 'Erfolgreich entfernt.'
  end

  private
    def personalised_params
      params.require(:personalised).permit(:name, :photo)
    end
end
