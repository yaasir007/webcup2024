class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_basket

  def current_basket
    if session[:basket_id].present?
      begin
        @basket = Basket.find(session[:basket_id])
      rescue ActiveRecord::RecordNotFound
        @basket = Basket.create(user: current_user)
        session[:basket_id] = @basket.id
      end
    else
      @basket = Basket.create(user: current_user)
      session[:basket_id] = @basket.id
    end
  end

  def authorize_user
    redirect_to root_path, notice: 'Only humans can view this page, we are watching you!' unless current_user.admin?
  end

  def authorized?
    current_user.admin?
  end
end
