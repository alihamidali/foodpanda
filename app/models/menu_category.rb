class MenuCategory < ApplicationRecord
	has_many :restaurant_menu_list
	has_many :restaurants, through: :restaurant_menu_list
end
