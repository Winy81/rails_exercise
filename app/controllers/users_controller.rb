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
	  else
		redirect_to stationeries_path, notice: "You are not authiruzed for listing Users"
	  end
	end
end
