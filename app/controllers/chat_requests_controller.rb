class ChatRequestsController < ApplicationController
  def create
    # create view with the button "request to chat" link_to here.
    @chat_request = ChatRequest.new
    @chat_request.asker = current_user
    @chat_request.receiver = # if the user is the receiver and click on the button request
  end


end
