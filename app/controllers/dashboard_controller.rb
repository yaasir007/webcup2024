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
    if authorized?
      @orders = Order.where(delivered: false)
      @past_orders = Order.where(delivered: true)
    else
      @orders = current_user.orders.order(created_at: :desc)
      @past_orders = []
    end
  end

  def my_tables
    @tables = Table.all
    @table = Table.new
  end

  def my_products
    @products = Product.all
    @product = Product.new
  end

  def my_delivery_route
    @order = Order.find(params[:id])
    @coordinates = [{
        lat: @order.latitude,
        lng: @order.longitude
      }]
  end
end
