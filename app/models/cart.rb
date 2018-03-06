class Cart < ApplicationRecord
	belongs_to :customer, class_name: "User", foreign_key: "user_id"
	has_and_belongs_to_many :products, class_name: "Product"
	
end
