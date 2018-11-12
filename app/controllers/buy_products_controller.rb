class BuyProductsController < ApplicationController

	def create
		@buy_product = BuyProduct.new

		@cart_items = CartItem.where(cart_id: @cart.id)

		@cart_items.each do |cart_item|

			@buy_product.buy_id = @buy.id
			@buy_product.product_id = cart_item.product_id

			@buy_product.save
		end

		@cart_items = CartItem.where(cart_id: @cart.id)
		@cart_items.each do |cart_item|
			cart_item.destroy
		end
		redirect_to products_path
	end


end
