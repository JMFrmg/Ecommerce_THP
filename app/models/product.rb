class Product < ApplicationRecord
  
  has_and_belongs_to_many :carts, class_name: "Cart"
  has_and_belongs_to_many :orders, class_name: "Order"
  
  validates :title, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { in: 4..3000 }
  validates :price, presence:true, :numericality => {:greater_than_or_equal_to => 0}
  validates :image_url, presence:true

end
