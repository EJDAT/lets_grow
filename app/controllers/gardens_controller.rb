class GardensController < ApplicationController

  def show
    @garden = Garden.find(params[:id])
    @garden_plants = @garden.garden_plants
    @number_of_plots = 20 - @garden_plants.count

  end
end
