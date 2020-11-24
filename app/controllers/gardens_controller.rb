class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(params[:garden])
    @garden.save
    redirect_to garden_path
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

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to gardens_path
  end

  private

  def garden_params
    params.require(:garden).permit(:address, :description, :rating)
  end

end
