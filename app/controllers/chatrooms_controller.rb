class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:chatroom_params])
    @message = Message.new
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:email, :nickname, :password)
  end
end
