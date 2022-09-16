class ChatRoomsController < ApplicationController
  def index
    @chatrooms = policy_scope(ChatRoom).all
  end


  def show
    if ChatRoom.exists?(params[:id])
      @chatroom = ChatRoom.find(params[:id])
    end
    @chatrooms = ChatRoom.all
    @message = Message.new
  end
end
