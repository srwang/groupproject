class OrdersController < ApplicationController
	protect_from_forgery except: :create

end