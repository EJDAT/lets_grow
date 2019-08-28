class GardenPlantsController < ApplicationController
  def create

    garden_plant = GardenPlant.new()
    garden_plant.plant = Plant.find(params[:plant_id])
    garden_plant.garden = current_user.garden

    if garden_plant.save

      garden_plant.plant.tasks.each do |task|
        UserTask.create!(user_id: current_user.id, task_id: task.id)
      end
      redirect_to garden_path(current_user.garden)
    end
  end

  def destroy
    @garden_plant = GardenPlant.find(params[:id])
    @garden_plant.destroy
   end

end
