class UsersController < ApplicationController

	def index
		@restaurant = Restaurant.where(id: params[:location_id])
		puts "#{@restaurant}"
		if session[:in_line] == true
			@visit = Visit.new
		else
			@visit = Visit.where(user_id: session[:user_id])
		end
		session[:user_id] = 1
	end

	def create
		Visit.create(visit_params)
		redirect_to location_users_path
		session[:in_line] = true
	end
	
	def show		
		@restaurant = Restaurant.where(id: params[:location_id])
		@user = User.where(id: params[:id])
	end


private
	
	def visit_params
		params.require(:visit).permit(:user_id, :restaurant_id)
	end	

end