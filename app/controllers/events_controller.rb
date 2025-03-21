class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.where("date >= ?", Date.today).order(:date)
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_url, notice: 'Ski-Test erfolgreich erstellt.'
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to events_url, notice: 'Ski-Test erfolgreich aktualisiert.'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Ski-Test erfolgreich entfernt.'
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:date, :place, :country, :cancelled)
    end
end
