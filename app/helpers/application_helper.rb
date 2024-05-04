module ApplicationHelper
  def total_price(basket)
    basket.basket_items.map { |item| item.product.price * item.quantity }.sum
  end
end
