class ChatRoomsController < ApplicationController
  def index
    @chatrooms = policy_scope(ChatRoom).all
  end

  def show
    authorize @chat_room
    authorize @chat_rooms
    if ChatRoom.exists?(params[:id])
      @chatroom = ChatRoom.find(params[:id])
    end
    @chatrooms = ChatRoom.all
    @message = Message.new
  end
end
