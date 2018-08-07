class RoleRight < ApplicationRecord
	belongs_to :users
	belongs_to :role
	belongs_to :right
end
