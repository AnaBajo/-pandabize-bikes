class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
    3.times do
      category = @bike.customization_categories.build
      3.times { category.customization_options.build }
    end
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to new_bike_limitation_path(@bike)
    else
      render :new
    end

  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
  end

  private

  def bike_params
    params.require(:bike).permit(
      :name,
      customization_categories_attributes: [
        :bike_id,
        :bike_element,
        customization_options_attributes: [
          :customization_category_id,
          :option
        ]
      ]
    )
  end
end
