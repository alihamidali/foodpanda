class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :orders
	has_many :inCompleteOrders

	has_many :privileges
	has_one :restaurant

	has_many :rating
	belongs_to :city
end
