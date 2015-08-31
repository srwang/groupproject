class User < ActiveRecord::Base
	has_secure_password
	has_many :restaurants, through: :visits 
	has_many :restaurants, through: :orders
	has_many :orders
	has_many :visits
	
end
