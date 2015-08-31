class UsersController < ApplicationController
	def show
  		@restaurant = Restaurant.find(params[:restaurant_id])
  		@user = User.find(params[:id])
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
end