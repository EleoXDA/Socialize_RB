class ChatRoomsController < ApplicationController
  def index
    @chatrooms = policy_scope(ChatRoom)
  end

  def show
    @chatroom = ChatRoom.find(params[:id])
    authorize @chatroom
    # @chatrooms = ChatRoom.all
    @message = Message.new
  end
end
