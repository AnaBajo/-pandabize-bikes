class LimitationsController < ApplicationController

  def new
    @bike = Bike.find(params[:bike_id])
    @limitation = Limitation.new
  end

  def create
    @bike = Bike.find(params[:bike_id])

  end

  private

  def limitations_params
    params.require(:limitation).permit(
      )
  end
end
