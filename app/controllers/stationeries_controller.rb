class StationeriesController < ApplicationController

	def index
		@stationeries = Stationery.all
	end

end
