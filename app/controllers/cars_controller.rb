class CarsController < ApplicationController
  before_action :find_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all.order("created_at DESC")
  end

  def show

  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to @car
    else
      render  'edit'
    end
  end

  def destroy
    @car.destroy
    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:title, :description,:price_seven_days,:price_ten_days, :price_fifteen_days,
    :price_fifteenmore_days, :price_twenty_days, :price_month_days)
  end

  def find_car
    @car = Car.find(params[:id])
  end
end
