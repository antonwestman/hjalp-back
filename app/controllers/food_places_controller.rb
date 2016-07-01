class FoodPlacesController < ApplicationController

  def index
    render json: FoodPlace.all
  end

  def show
    render json: FoodPlace.find(params[:id])
  end

end
