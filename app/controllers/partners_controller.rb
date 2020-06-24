class PartnersController < ApplicationController
  before_action :set_partner, only: [:show, :edit, :update, :destroy]

  def index
    @partners = Partner.geocoded # returns flats with coordinates
    @grouped_partners = @partners.order(:name).group_by {|obj| obj.country}


    @markers = @partners.map do |partner|
      {
        lat: partner.latitude,
        lng: partner.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { partner: partner })
      }
    end
  end

  def show
  end

  def new
    @partner = Partner.new
  end

  def edit
  end

  def create
    @partner = Partner.new(partner_params)
    if @partner.save
      redirect_to partners_url, notice: 'Händler erfolgreich erstellt.'
    else
      render :new
    end
  end

  def update
    if @partner.update(partner_params)
      redirect_to partners_url, notice: 'Händler erfolgreich aktualisiert.'
    else
      render :edit
    end
  end

  def destroy
    @partner.destroy
    redirect_to partners_url, notice: 'Händler erfolgreich entfernt.'
  end

  private
    def set_partner
      @partner = Partner.find(params[:id])
    end

    def partner_params
      params.require(:partner).permit(:name, :address, :zip_code, :place, :country, :link)
    end
end
