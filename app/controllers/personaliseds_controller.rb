class PersonalisedsController < ApplicationController
  before_action :set_personalised, only: [:edit, :update, :destroy]

  def index
    @personaliseds = Personalised.all
  end

  def new
    @personalised = Personalised.new
  end

  def edit
  end

  def create
    @personalised = Personalised.new(personalised_params)
    if @personalised.save
      redirect_to personalised_path, notice: 'Erfolgreich erstellt.'
    else
      render :new
    end
  end

  def update
    if @personalised.update(personalised_params)
      redirect_to personalised_path, notice: 'Erfolgreich aktualisiert.'
    else
      render :edit
    end
  end

  def destroy
    @personalised.destroy
    redirect_to personalised_path notice: 'Erfolgreich entfernt.'
  end

  private
    def set_personalised
      @personalised = Personalised.find(params[:id])
    end

    def personalised_params
      params.require(:personalised).permit(:name, :photo)
    end
end
