class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @chatroom = ChatRoom.find(params[:chat_room_id])
    @message.chat_room = @chatroom
    @message.user = current_user

    if @message.save
      redirect_to chat_room_path(@chatroom)
    else
      render "chatrooms/show", status: :unprocesable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
