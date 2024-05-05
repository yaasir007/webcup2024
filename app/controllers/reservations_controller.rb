class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to my_reservations_path, notice: 'Reservation was successfully created.'
    else
      @tables = Table.all
      render 'tables/index', status: :unprocessable_entity, notice: "Reservation was not unsuccessfull. But it's not the end of the world... kind of."
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_time, :table_id, :seats)
  end
end
