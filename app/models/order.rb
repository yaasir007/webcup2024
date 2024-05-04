class Order < ApplicationRecord
  has_many :baskets
  has_many :products, through: :baskets
end
