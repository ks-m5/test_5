class ProductsController < ApplicationController

	def index
		@products = Product.all.order("created_at DESC")
		@product = Product.new
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.user_id = current_user.id
		if @product.save
			flash[:notice] = "出品が完了しました"
			redirect_to products_path
		else
			@product.errors.full_messages
			render "products/new"
		end
	end

	def show
		@product = Product.find(params[:id])
		# @cart_item = CartItem.new
		# いらないっぽい
	end

	private

	def product_params
		params.require(:product).permit(:artist, :album, :image, :label, :introduction, :price, :count, :genre, :state, :song)
	end

end