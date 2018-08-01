class Role < ApplicationRecord
	has_many :privileges
	has_many :rights, through: :privileges 
end
