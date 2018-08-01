class MenuItem < ApplicationRecord
	belongs_to :menu
	has_one :order_line
end
