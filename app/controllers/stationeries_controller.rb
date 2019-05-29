class StationeriesController < ApplicationController

	before_action :set_stationery, only:[:show,:edit,:update,:destroy]

	def index
    @stationeries = Stationery.all
	end

	def show
	  
	end

	def new
	  @stationery = Stationery.new
	end

	def create
		if logged_in?(:admin)
	  		@stationery = current_user.stationery.create(stationery_params)
	  			if @stationery.save
	  				flash[:success] = "Item has been added"
	  				redirect_to stationeries_path
	  			else
	  				flash.now[:danger] = "Item hasn't been created"
	  				render :new
	  			end
	  else
	  	flash.now[:danger] = "You have no permisson to create stationeries"
	  	redirect_to stationeries_path
	  end
	end

	def edit
	  
	end

	def update
	  if @stationery.update(stationery_params)
	  	flash[:success] = "Item has been updated"
	  	redirect_to stationeries_path(@stationery)
	  else
	  	flash.now[:danger] = "Item hasn't been updated"
	  	render :edit
	  end
	end

	def destroy
	  if @stationery.destroy	
	  	flash[:success] = "Item has been destroyed"
	  	redirect_to stationeries_path
	  end
	end

	private

	def set_stationery
		@stationery = Stationery.find(params[:id])
	end

	def stationery_params
  	  params.require(:stationery).permit(:name,:product_code,:consumable,:availability,:user_id,:cupboard)
  	end

end
