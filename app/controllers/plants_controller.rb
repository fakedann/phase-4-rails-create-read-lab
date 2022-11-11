class PlantsController < ApplicationController
  wrap_parameters format: []

  def index
    render json: Plant.all, only: [:id, :name, :image, :price], status: :ok
  end

  def show
    render json: Plant.find(params[:id]), only: [:id, :name, :image, :price], status: :ok
  end

  def create
    render json: Plant.create(plant_params), only: [:id, :name, :image, :price], status: :created
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
  
end
