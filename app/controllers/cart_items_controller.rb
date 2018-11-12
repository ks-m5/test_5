class CartItemsController < ApplicationController

	def update
		@cart_item = CartItem.new
		@cart_item.cart_id = current_user.cart.id

		@product = Product.find(params[:id])
		# CartContrllerにProductモデルを使用しているがこれで良いのか確認。
		# 単純に@cart_item(product_id: params[:id])とした方が良いのか？
		@cart_item.product_id = @product.id
		@cart_item.save
		redirect_to products_path
	end

end
