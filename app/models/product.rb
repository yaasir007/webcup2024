class Product < ApplicationRecord
  validates :title, :price, :category, :description, :image_url, presence: true
  validates :price, numericality: { greater_than: 0 }

  validates :detailed_description, presence: true

  has_many :basket_items
  has_many :baskets, through: :basket_items
  has_one_attached :image
end
