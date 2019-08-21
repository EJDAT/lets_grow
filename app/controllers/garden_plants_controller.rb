class GardenPlantsController < ApplicationController
  def create
    garden_plant = GardenPlant.new()
    garden_plant.plant = Plant.find(params[:plant_id])
    garden_plant.garden = current_user.garden
    if garden_plant.save
      redirect_to garden_path(current_user.garden)
    end
  end
end
