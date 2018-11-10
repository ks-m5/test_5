class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	# helper_method :current_cart

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :potal, :state, :street, :adress, :tel, :image_id, :profile])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :name_kana, :potal, :state, :street, :adress, :tel, :image_id, :profile])
	end

	# def current_cart
	# 	if session[:cart_id]
	# 		@cart = Cart.find(session[:cart_id])
	# 	else
	# 		@cart = Cart.new
	# 		@cart.user_id = current_user.id
	# 		@cart.save
	# 		session[:cart_id] = @cart.id
	# 	end
	# end

end