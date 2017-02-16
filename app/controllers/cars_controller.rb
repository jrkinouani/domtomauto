class CarsController < ApplicationController

  def index

  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
  end

  private

  def car_params
    params.require(:car).permit(:title, :description)
  end
end
