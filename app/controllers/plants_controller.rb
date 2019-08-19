class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plants = Plant.find(params[:id])
  end
end

