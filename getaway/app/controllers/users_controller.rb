class UsersController < ApplicationController
# protect_from_forgery except: :create
	def show
		if logged_in?
			@restaurant = Restaurant.find(params[:restaurant_id])
				puts "******************"
				puts session[:user_id]
	  		@user = User.find(session[:user_id])
	  		@menu_items = MenuItem.where(restaurant_id:params[:restaurant_id])

	  		if !(session[:in_line] == true)
				Temp.create({user_id:session[:user_id], restaurant_id:params[:restaurant_id]})
				Visit.create({user_id:session[:user_id], restaurant_id:params[:restaurant_id]})
				session[:in_line] = true
			end
			@visit = Temp.where(user_id: session[:user_id])[0]

			respond_to do |format|
				format.html
	  			format.js
	  		end
  		else
  			redirect_to '/login/1'
    	end
	end

	def new
		orders = params[:orders]
		orderString = ""

		orders.each do |order|
			orderString = orderString + " " + order
		end

		admin = User.where(account_type: "admin")
		puts admin
		admins = []

		admin.each do |admin|
			admins.push(admin.id)
		end

		visit = Visit.where(user_id: session[:user_id])
		visit = visit[visit.length-1] 
		visit.update(menu: orderString)

		temp = Temp.where(user_id: session[:user_id])[0]
		temp.update(menu: orderString)

		cookies[:admin_id] = admins
		redirect_to "/restaurants/#{params[:restaurant_id]}/users/#{session[:user_id]}"
	end

	def create
		@user = User.create(user_params)
    	redirect_to '/login/1'
	end

	def destroy 
		temp = Temp.where(user_id: session[:user_id])[0]
		temp.destroy

		visit = Visit.where(user_id: session[:user_id])
		visit = visit[visit.length-1]
		visit.destroy

		session[:in_line] = nil
		redirect_to '/login/1'
	end

private

	def user_params
		params.require(:user).permit(:username, :name, :password, :account_type)
	end
end