class ChatRequestsController < ApplicationController

  def create
    # create view with the button "request to chat" link_to here.
    @chat_request = ChatRequest.new
    @chat_request.asker = current_user
    @chat_request.receiver = # if the user is the receiver and click on the button request
  end

  def pin_user
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
