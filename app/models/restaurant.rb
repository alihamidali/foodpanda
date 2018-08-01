class Restaurant < ApplicationRecord
	belongs_to :user, optional: false
	
	has_many :ratings
	has_many :users, through: :ratings

	has_many :orders
	has_many :users, through: :orders

	has_many :menus
	has_many :menu_items, through: :menus
	
	has_many :branches
	has_many :cities, through: :branches
end
