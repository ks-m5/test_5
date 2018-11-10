class CartsController < ApplicationController

	def update
		if Cart.where(user_id: current_user.id).exists?
			@cart = Cart.find_by(user_id: current_user.id)
		else
			@cart = Cart.new
			@cart.user_id = current_user.id
			@cart.save
		end

		@cart_item = CartItem.new
		@cart_item.cart_id = @cart.id

		@product = Product.find(params[:id])
		@cart_item.product_id = @product.id
		@cart_item.save
		redirect_to products_path
	end

	def index
		@cart = Cart.find_by(user_id: current_user.id)
	end

	def destroy
		@ = 
	end

end
