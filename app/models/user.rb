class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :orders
	has_many :inCompleteOrders

	has_and_belongs_to_many :roles

	has_one :restaurant

	has_many :rating
	belongs_to :city, :optional => true

	def ability
		@ability ||= Ability.new(self)
	end

	def has_role?(role_sym)
		roles.any? { |r| r.name.underscore.to_sym == role_sym }
	end
end
