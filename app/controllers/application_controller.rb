class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def current_basket
    if session[:basket_id].present?
      @basket = Basket.find(session[:basket_id])
    else
      @basket = Basket.create
      session[:basket_id] = basket.id
      @basket
    end
  end
end
