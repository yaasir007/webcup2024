class Product < ApplicationRecord
  validates :title, :price, :category, :description, :image_url, presence: true
  validates :price, numericality: { greater_than: 0 }

  has_many :basket_items
  has_many :baskets, through: :basket_items
end
