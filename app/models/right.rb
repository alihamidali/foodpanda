class Right < ApplicationRecord
	has_many :privileges
	has_many :roles, through: :privileges
end
