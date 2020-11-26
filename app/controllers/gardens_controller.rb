class GardensController < ApplicationController
  def index
    @gardens = policy_scope(Garden)

    if params[:query].present?
      @gardens = Garden.near(params[:query], 10)
    else
      @gardens = @gardens.where.not(latitude: nil, longitude: nil)
    end

    @markers = @gardens.geocoded.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude,
        infoWindow: render_to_string(partial: "info_window_index", locals: { garden: garden }),
        image_url: helpers.asset_url('Map-marker.png')
      }
    end
  end

  def show
    @garden = Garden.find(params[:id])
    authorize @garden

    @markers = [{
      lat: @garden.latitude,
      lng: @garden.longitude,
      infoWindow: render_to_string(partial: "info_window_show", locals: { garden: @garden }),
      image_url: helpers.asset_url('Map-marker.png')
    }]
  end

  def new
    @garden = current_user.gardens.new
    authorize @garden
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    authorize @garden
    if @garden.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def update
    @garden = Garden.find(params[:id])
    @garden.update(params[:garden])
    redirect_to garden_path(@garden)
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to gardens_path
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :address, :description, photos: [] )
  end
end
