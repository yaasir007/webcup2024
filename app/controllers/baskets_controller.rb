class BasketsController < ApplicationController

  def show
    @basket = current_user.basket
  end
end
