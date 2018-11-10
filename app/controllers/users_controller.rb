class UsersController < ApplicationController

	def show
		@user = User.find_by(id: params[:id])
		@chat = Chat.new
		@chats = Chat.where(room_id: params[:id])
	end

	def update
		if @room = Room.find_by(user_id: params[:id]).present?
		else
			@user = User.find_by(id: params[:id])
			@room = Room.new
			@room.user_id = @user.id
			@room.save
		end
		@room = Room.find_by(user_id: params[:id])
		@chat = Chat.new(chat_params)
		@chat.user_id = current_user.id
		@chat.room_id = @room.id
		@chat.save
		redirect_to user_path
	end



	private
	def chat_params
		params.require(:chat).permit(:content)
	end
end
