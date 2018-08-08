class Restaurant < ApplicationRecord
	belongs_to :user, optional: false
	
	has_many :ratings
	has_many :users_from_ratings, through: :ratings

	has_many :orders
	has_many :users_from_orders, through: :orders

	has_many :restaurant_menu_list
	has_many :menu_categories, through: :restaurant_menu_list
	
	has_many :branches
	has_many :cities, through: :branches
end
