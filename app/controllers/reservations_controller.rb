class ReservationsController < ApplicationController

def index
  @reservations = Reservation.all

end

  def new
		@reservation = Reservation.new
     @car = Car.find(params[:car_id])
	end

  def create
    @reservation = Reservation.new(reservation_params)
    @car = Car.find(params[:reservation][:car_id])
    @nb_days = (@reservation.at_end.to_i - @reservation.at_start.to_i)/1.days

    if @nb_days <= 7
      @reservation.pay = @car.price_seven_days * @nb_days
    end
    if (@nb_days > 7) && (@nb_days <= 10)
      @reservation.pay = @car.price_ten_days * @nb_days
    end
    if (@nb_days > 10) && (@nb_days <= 15)
      @reservation.pay = @car.price_fifteen_days * @nb_days
    end

    if @reservation.save
       redirect_to charges_path
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:at_end, :at_start, :pay, :car_id)
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end
end
