class UsersController < ApplicationController

	def index
		session[:user_id] = 4
		@restaurant = Restaurant.where(id: params[:location_id])[0]
		if !session[:in_line]
			@visit = Visit.new
			render :index
		else
			redirect_to "/location/#{params[:location_id]}/users/#{session[:user_id]}"
		end
	end

	def create
		Visit.create(visit_params)
		session[:in_line] = true
		redirect_to "/location/#{params[:location_id]}/users/#{session[:user_id]}"
	end

	def put
		Order.create({restaurant_id: params[:location_id], user_id: params[:id], order: params[:order]})
	end

	def destroy
		visit = Visit.where(user_id: params[:id])[0]
		visit.destroy
		redirect_to location_users_path
	end
	
	def show		
		@restaurant = Restaurant.where(id: params[:location_id])[0]
		@visit = Visit.where(user_id: params[:id])[0]
	end

	def menu
		restaurant = Restaurant.where(id: params[:location_id])[0]
		@menu = restaurant.menu.split(",")
	end

private
	
	def visit_params
		params.require(:visit).permit(:user_id, :restaurant_id)
	end	

end