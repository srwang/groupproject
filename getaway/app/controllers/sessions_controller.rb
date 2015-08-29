class SessionsController < ApplicationController
	def login
		render :index
		puts params[:id]
	end
end
