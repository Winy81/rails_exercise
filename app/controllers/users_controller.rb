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

	def edit
	  if logged_in?(:admin)
	  	@user = User.find(params[:id])
	  else
		redirect_to stationeries_path, notice: "You are not allowed to editing Users"
	  end

	end

	def update
	  @user = User.find(params[:id])
	  if @user.update(user_params)
	  	flash[:success] = "User has been updated"
	  	redirect_to users_path
	  else
	  	flash.now[:danger] = "User hasn't been updated"
	  	render :edit
	  end
	end

	def destroy
	  if logged_in?(:admin)
	  	@user = User.find(params[:id])
	  	if @user.destroy
	  	  flash[:success] = "Item has been destroyed"
	  	  redirect_to users_path
	  	end
	  end
	end


	private

	def user_params
		params.require(:user).permit(:email,:name,:activity)
	end
end
