class ApplicationController < ActionController::Base

	def index
		@sationeries = Stationery.all
	end
	
end
