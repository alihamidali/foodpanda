class Restaurant < ApplicationRecord
	belongs_to :user, optional: false
	
	has_many :ratings
	has_many :users, through: :ratings, as: :users_from_ratings

	has_many :orders
	has_many :users, through: :orders, as: :users_from_orders

	has_many :restaurant_menu_list
	has_many :menu_categories, through: :restaurant_menu_list
	
	has_many :branches
	has_many :cities, through: :branches
end
