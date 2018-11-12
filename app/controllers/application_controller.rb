class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :make_cart_buy
	# ユーザーが登録、ログインしたときにmake_cartメソッドを呼び出したいが、deviseで設定しているためroutesをいじれない。どうするべきか？

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :potal, :state, :street, :adress, :tel, :image_id, :profile])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :name_kana, :potal, :state, :street, :adress, :tel, :image_id, :profile])
	end


	def make_cart_buy
		if Cart.where(user_id: current_user.id).exists?
			@cart = Cart.find_by(user_id: current_user.id)
		else
			@cart = Cart.new
			@cart.user_id = current_user.id
			@cart.save
		end

		if Buy.where(user_id: current_user.id).exists?
			@buy = Buy.find_by(user_id: current_user.id)
		else
			@buy = Buy.new
			@buy.user_id = current_user.id
			@buy.save
		end
	end


end