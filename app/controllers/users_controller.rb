class UsersController < ApplicationController
	
	def index
	  if logged_in?(:admin)
		@users = User.all
	  else
		redirect_to stationeries_path, notice: "You are not authiruzed for listing Users"
	  end
	end

	def show
	  if logged_in?(:admin) || current_user
	  	@user = User.find(params[:id])
		redirect_to stationeries_path, notice: "You are not allowed to check other user details" unless @user == current_user || logged_in?(:admin) 
	  else
		redirect_to stationeries_path, notice: "You are not authiruzed for checking Users"
	  end
	end

end
