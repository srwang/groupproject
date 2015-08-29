class Restaurant < ActiveRecord::Base
	has_many :users, through: :visits
	has_many :users, through: :orders
	has_many :orders
	has_many :visits
end
