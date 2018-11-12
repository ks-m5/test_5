class CartsController < ApplicationController

	def index
		@cart = Cart.find_by(user_id: current_user.id)
	end

	def show
		@cart_item = CartItem.new
		@delivery = Delivery.new
	end

end
