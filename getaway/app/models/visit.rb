class Visit < ActiveRecord::Base
	has_one :order, dependent: :destroy
	belongs_to :users
end
