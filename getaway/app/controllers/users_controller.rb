class UsersController < ApplicationController
	
end




def show 
if logged_in?
	@current_user = User.find(session[:user_id])
	@restaurant = Restaurant.find(params[:id])

	end 