class Product < ApplicationRecord
  has_many :carts
  has_many :users, through: :carts
  validates :title, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { in: 4..3000 }
  validates :price, presence:true, numericality: true
  validates :image_url, presence:true

end
