class BasketItemsController < ApplicationController

  def create
    @basket_item = BasketItem.new(params_basket_item)
    @basket_item.basket = @basket
    if @basket_item.save
      redirect_to product_path(@basket_item.product), notice: "Product added to basket"
    else
      render 'products/show', notice: "Something went wrong, try again!", status: :unprocessable_entity, locals: { product: @basket_item.product }
    end
  end

  def destroy
    @basket_item = BasketItem.find(params[:id])
    @basket_item.destroy
    redirect_to basket_path, notice: "Product removed from basket"
  end

  private

  def params_basket_item
    params.require(:basket_item).permit(:quantity, :product_id)
  end
end
