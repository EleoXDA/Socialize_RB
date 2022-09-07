class ChatRequestsController < ApplicationController
  def index
    @chat_requests = ChatRequest.where(asker: current_user).or(ChatRequest.where(receiver: current_user))
  end

  def create
    # create view with the button "request to chat" link_to here.
    @chat_request = ChatRequest.new
    @chat_request.asker = current_user
   # @chat_request.receiver = # if the user is the receiver and click on the button request
  end

 # def update
 #   @chat_request = ChatRequest.where(receiver: current_user)
 #   if current_user.confirmed?
 #   else current_user
 #  end
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
