class ChatRoomsController < ApplicationController
  # def index

  # end


  def show
    @chatroom = ChatRoom.find(params[:id])
    @chatrooms = ChatRoom.all
    @message = Message.new
  end
end
