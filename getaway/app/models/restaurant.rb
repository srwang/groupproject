class Restaurant < ActiveRecord::Base
	has_many :users, through: :visits
	has_many :users, through: :orders
	has_many :users, through: :temps
	has_many :visits
	has_many :temps
end
