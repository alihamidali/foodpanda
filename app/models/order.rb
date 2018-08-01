class Order < ApplicationRecord
	belongs_to :user
	belongs_to :restaurant
	belongs_to :city

	has_many :order_lines
end
