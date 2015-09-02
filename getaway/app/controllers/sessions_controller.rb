class SessionsController < ApplicationController

    def new 
    end 

    def login
        render :index
    end

    def create 

        user = User.find_by({username: params[:username]})
        restaurant = Restaurant.find(params[:id])
        if user && user.authenticate(params[:password])
            	session[:user_id] = user.id
                cookies[:user_id] = user.id
            if user.account_type == 'admin'
                redirect_to restaurant_path(restaurant)
            else
            	redirect_to "/restaurants/#{params[:id]}/users/#{user.id}"
            end
        else
            redirect_to(:back)
        end

    end
            

    def  destroy 
        session[:user_id] = nil
        session[:in_line] = nil
        cookies[:user_id] = nil
        redirect_to '/login/1'
    end 




end

