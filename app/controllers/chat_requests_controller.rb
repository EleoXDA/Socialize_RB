class ChatRequestsController < ApplicationController
  def update
    @asker = current_user
    @receiver = User.find(params[:id])
    @chat_request = ChatRequest.find(params[:id])
    if @chat_request.receiver_is_pinned == false
      @chat_request.update(receiver_is_pinned: true)
    else
      @chat_request.update(receiver_is_pinned: false)
    end
  end
end
