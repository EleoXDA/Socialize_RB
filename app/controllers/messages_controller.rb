class MessagesController < ApplicationController
  def show
    @chatroom = ChatRoom.find(params[:id])
    @message = Message.new
  end
end
