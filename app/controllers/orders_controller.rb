class OrdersController < ApplicationController

  def create
    @order = Order.new(params_order)
    @order.basket = @basket
    @order.total = total_price
    @order.save
    @basket = Basket.create
    session[:basket_id] = @basket.id
    redirect_to products_path, notice: 'Your delivery is on its way! 🚚'
  end

  private

  def total_price
    @basket.basket_items.map { |item| item.product.price * item.quantity }.sum
  end

  def params_order
    params.require(:order).permit(:longitude, :latitude)
  end
end
