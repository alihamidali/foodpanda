class User < ApplicationRecord
	has_many :orders
	has_many :inCompleteOrders

	has_many :privileges
	has_one :restaurant

	has_many :rating
	belongs_to :city
end
