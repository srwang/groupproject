class Visit < ActiveRecord::Base
	has_one :order, dependent: :destroy
	belongs_to :user
	belongs_to :restaurant
end
