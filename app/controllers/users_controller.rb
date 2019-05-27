class UsersController < ApplicationController
	def index
	  if logged_in?(:admin)
		@users = User.all
	  else
		redirect_to stationeries_path, notice: "You are not authiruzed for listing Users"
	  end
	end

	def show
		@user = User.find(params[:id])
	end
end
