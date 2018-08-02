class MenuItem < ApplicationRecord
	belongs_to :restaurant_menu_list
	has_one :order_line
end
