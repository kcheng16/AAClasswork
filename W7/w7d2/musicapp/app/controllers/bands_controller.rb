class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end

  def show
    @band = Band.find(params[:id])

    render :show
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      redirect_to bands_url
    else
      flash.now[:error] = @band.errors.full_messages
      render :new
    end
  end

  
end
