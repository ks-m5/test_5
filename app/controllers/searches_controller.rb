class SearchesController < ApplicationController

	def search
		@products = Product.search(params[:search])
	end


end
