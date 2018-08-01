class City < ApplicationRecord
	has_many :users
	has_many :branches
	has_many :orders
	has_many :restaurants, through: :branches

	belongs_to :state
end
