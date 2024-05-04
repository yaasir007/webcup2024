class DashboardController < ApplicationController
  before_action :authorize_user, except: %i[my_reservations my_orders]

  def my_reservations
    if authorized?
      @reservations = Reservation.where('start_time >= ?', Time.now)
      @past_reservations = Reservation.where('start_time < ?', Time.now)
    else
      @reservations = current_user.reservations.order(start_time: :desc)
      @past_reservations = []
    end
  end

  def my_orders
    @orders = Order.where(user: current_user)
  end

  def my_tables
    @tables = Table.all
    @table = Table.new
  end

  def my_products
    @products = Product.all
    @product = Product.new
  end
end
