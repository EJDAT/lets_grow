class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @vegeplants = Plant.where(category: "vegetable")
    @fruitplants = Plant.where(category: "fruit")
  end

  def show
    @plant = Plant.find(params[:id])
    @months = %w[jan feb mar apr may jun jul aug sep oct nov dec]
  end
end
