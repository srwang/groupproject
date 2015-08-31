class UsersController < ApplicationController
	def show
  		@restaurant = Restaurant.find(params[:restaurant_id])
  		@user = User.find(params[:id])
  		@menu_items = MenuItem.where(restaurant_id:params[:restaurant_id])
  		puts session[:in_line]

  		if !(session[:in_line] == true)
			Visit.create({user_id:params[:id], restaurant_id:params[:restaurant_id]})
			session[:in_line] = true
		end
			@visit = Visit.last

		respond_to do |format|
			format.html
  			format.js
  		end
	end

	def destroy
		visit = Visit.where(user_id: params[:id])[0]
		visit.destroy
		redirect_to restaurant_user_path
		session[:in_line] = false
	end
end