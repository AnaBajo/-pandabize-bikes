class LimitationsController < ApplicationController

  def new
    @bike = Bike.find(params[:bike_id])
    @limitation = Limitation.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @limitation = Limitation.new(limitations_params)
  end

  private

  def limitations_params
    params.require(:limitation).permit(:customization_category_id, :customization_option_id, :allowed_options_ids)
  end
end
