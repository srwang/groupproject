class UsersController < ApplicationController
	def show
		if logged_in?
			@restaurant = Restaurant.find(params[:restaurant_id])
	  		@user = User.find(session[:user_id])
	  		@menu_items = MenuItem.where(restaurant_id:params[:restaurant_id])
	  		@order = Order.new

	  		if !(session[:in_line] == true)
				Temp.create({user_id:params[:id], restaurant_id:params[:restaurant_id]})
				Visit.create({user_id:params[:id], restaurant_id:params[:restaurant_id]})
				session[:in_line] = true
			end

			@visit = Temp.last

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
		@restaurant = Restaurant.find(params[:restaurant_id])
		@user = User.new
		admin = User.where(account_type: "admin")
		puts admin
		admins = []

		admin.each do |admin|
			admins.push(admin.id)
		end

		cookies[:admin_id] = admins
		redirect_to "/restaurants/#{params[:restaurant_id]}/users/#{params[:order][:user_id]}"
	end

	def create
		@user = User.create(user_params)
    	redirect_to '/login/1'
	end

	def destroy
		visit = Temp.where(user_id: session[:user_id])[0]
		visit.destroy
		redirect_to '/login/1'
	end

private

	def order_params
		params.require(:order).permit(:restaurant_id, :user_id, :order, :visit_id)
	end	

	def user_params
		params.require(:user).permit(:username, :name, :password, :account_type)
	end
end