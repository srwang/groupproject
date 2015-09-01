class QueuesController < ApplicationController
	def destroy
		temp = Temp.first
		temp.delete
		session[:in_line] = false
		redirect_to '/restaurants/1'
	end


end