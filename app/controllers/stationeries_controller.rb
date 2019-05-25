class StationeriesController < ApplicationController

	def index
		@stationeries = Stationery.all
	end

	def show
		@stationery = Stationery.find(params[:id])
	end

end
