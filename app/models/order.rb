class Order < ApplicationRecord
	belongs_to :client, class_name: "User", foreign_key: "user_id"
	has_and_belongs_to_many :products, class_name: "Product"
end
