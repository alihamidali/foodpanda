class City < ApplicationRecord
	has_many :users
	has_many :branches
	has_many :orders
	has_many :restaurants, through: :branches

	has_one_attached :thumbnail

	belongs_to :state
end
