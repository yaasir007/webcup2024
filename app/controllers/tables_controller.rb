class TablesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @reservation = Reservation.new
    @tables = Table.all
  end
end
