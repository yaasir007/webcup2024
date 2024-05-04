class BasketsController < ApplicationController
  def show
    @items = @basket.basket_items.includes(:product)
  end
end
