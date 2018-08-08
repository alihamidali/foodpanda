class Role < ApplicationRecord
	has_many :role_rights
	has_and_belongs_to_many :users
	has_many :rights, through: :role_rights
end
