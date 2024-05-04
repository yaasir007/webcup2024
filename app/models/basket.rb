class Basket < ApplicationRecord
  has_many :basket_items, dependent: :destroy
  has_many :products, through: :basket_items
  belongs_to :user
end
