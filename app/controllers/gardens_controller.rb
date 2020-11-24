class GardensController < ApplicationController
  def index
    @gardens = policy_scope(Garden)
  end

  def show
    @garden = Garden.find(params[:id])
    authorize @garden
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
    redirect_to gardens_path
  end

  private

  def garden_params
    params.require(:garden).permit(:address, :description)
  end

end
