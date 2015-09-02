class RestaurantsController < ApplicationController
# 	  restaurants GET    /restaurants(.:format)          restaurants#index
#                 POST   /restaurants(.:format)          restaurants#create
#  new_restaurant GET    /restaurants/new(.:format)      restaurants#new
# edit_restaurant GET    /restaurants/:id/edit(.:format) restaurants#edit
#      restaurant GET    /restaurants/:id(.:format)      restaurants#show
#                 PATCH  /restaurants/:id(.:format)      restaurants#update
#                 PUT    /restaurants/:id(.:format)      restaurants#update
#                 DELETE /restaurants/:id(.:format)      restaurants#destroy

	def show
			
		# actual_user = User.find(session[:user_id])
		if logged_in?
	      @current_user = User.find(session[:user_id])
	      @restaurant = Restaurant.find(params[:id])
	      
	      respond_to do |format|
			format.html
  			format.js
  			end
  		else
  			redirect_to '/login/1'
    	end
		
	end

	def refresh_part
		render :partial => 'restaurants/queue'
	end

end