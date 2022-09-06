class ChatRoomsController < ApplicationController
  # def index

  # end


  def show
    @chatroom = ChatRoom.find(params[:id])
    @message = Message.new
  end
end
