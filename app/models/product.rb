class Product < ApplicationRecord
  validates :title, :price, :category, :description, presence: true
  validates :price, numericality: { greater_than: 0 }

  has_many :baskets
  has_many :orders, through: :baskets

end
