class RestaurantMenuList < ApplicationRecord
	belongs_to :restaurant
	belongs_to :menu_category
	has_many :menu_items
end
