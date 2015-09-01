class UsersController < ApplicationController

	def show
		if logged_in?
			@restaurant = Restaurant.find(params[:restaurant_id])
	  		@user = User.find(params[:id])
	  		@menu_items = MenuItem.where(restaurant_id:params[:restaurant_id])
	  		@order = Order.new

	  		if !(session[:in_line] == true)
				Visit.create({user_id:params[:id], restaurant_id:params[:restaurant_id]})
				session[:in_line] = true
				end
				@visit = Visit.last

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
	end

	def destroy
		visit = Visit.where(user_id: params[:id])[0]
		visit.destroy
		session[:in_line] = false
		redirect_to restaurant_user_path
	end

private

	def order_params
		params.require(:order).permit(:restaurant_id, :user_id, :order, :visit_id)
	end	
end