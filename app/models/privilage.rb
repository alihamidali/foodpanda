class Privilage < ApplicationRecord
	belongs_to :right
	belongs_to :role
	belongs_to :user
end
