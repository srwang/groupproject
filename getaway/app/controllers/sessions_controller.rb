class SessionsController < ApplicationController



	def login
		render :index
		
	end


	def create
		puts "*************************"
		puts name = params[:name]
		puts params[:id]
		
		

	end

end
