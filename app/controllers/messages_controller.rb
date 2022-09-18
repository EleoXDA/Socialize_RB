class MessagesController < ApplicationController

  def show
    @messages = policy_scope(Message).all
  end

  def create
    @message = Message.new(message_params)
    authorize @message
    @chatroom = ChatRoom.find(params[:chat_room_id])
    @message.chat_room = @chatroom
    @message.user = current_user

    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok
    else
      render "chat_rooms/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
