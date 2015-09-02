class UsersController < ApplicationController

	def show
		if logged_in?
			@restaurant = Restaurant.find(params[:restaurant_id])
	  		@user = User.find(params[:id])
	  		@menu_items = MenuItem.where(restaurant_id:params[:restaurant_id])
	  		@order = Order.new

	  		if !(session[:in_line] == true)
				Temp.create({user_id:params[:id], restaurant_id:params[:restaurant_id]})
				session[:in_line] = true
				end
				@temp = Temp.last

			respond_to do |format|
				format.html
	  			format.js
	  		end
  		else
  			redirect_to '/login/1'
    	end
	end


	def new

		Order.create(order_params)
		redirect_to "/restaurants/#{params[:restaurant_id]}/users/#{params[:order][:user_id]}"
		@restaurant = Restaurant.find(params[:restaurant_id])
		@user = User.new
	end

	def create
		@user = User.create(user_params)
    	redirect_to '/login/1'

	end

	def destroy
		
	end

private

	def order_params
		params.require(:order).permit(:restaurant_id, :user_id, :order, :visit_id)
	end	

	def user_params
		params.require(:user).permit(:username, :name, :password, :account_type)
	end
end