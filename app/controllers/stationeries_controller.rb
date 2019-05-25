class StationeriesController < ApplicationController

	def index
      @stationeries = Stationery.all
	end

	def show
	  @stationery = Stationery.find(params[:id])
	end

	def new
	  @stationery = Stationery.new
	end

	def create
	  @stationery = Stationery.new(stationery_params)
	  if @stationery.save
	  	flash[:success] = "Item has been added"
	  	redirect_to stationeries_path
	  else
	  	flash.now[:danger] = "Item hasn't been created"
	  	render :new
	  end
	end

	def edit
	  @stationery = Stationery.find(params[:id])
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

	def stationery_params
  	  params.require(:stationery).permit(:name,:product_code,:consumable,:availability)
  	end

  end

end
