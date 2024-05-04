class BasketItem < ApplicationRecord
  belongs_to :basket
  belongs_to :product

  validates :quantity, numericality: { greater_than: 0 }
end
