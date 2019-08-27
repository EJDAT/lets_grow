class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
    @months = %w[jan feb mar apr may jun jul aug sep oct nov dec]
  end
end
