class BasketsController < ApplicationController
  def show
    @items = @basket.basket_items.includes(:product)
    @order = Order.new
    @user = current_user
  end
end
