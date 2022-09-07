class ChatRequestsController < ApplicationController
  def index
    @chat_requests = ChatRequest.where(asker: current_user).or(ChatRequest.where(receiver: current_user))
  end

  def create
    # create view with the button "request to chat" link_to here.
    # @asker = current_user
    @chat_request = ChatRequest.new
    @chat_request.asker = current_user
    # @chat_request.receiver = # if the user is the receiver and click on the button request
    @chat_request.receiver = User.find(params[:receiver])
    if @chat_request.save
      redirect_to action: "index"
    end
  end

  def update
    @chat_request = ChatRequest.find(params[:id/:chat_request_id])
    @chat_request.update(status: params[:status])
    # status: confirmed
    if current_user.confirmed? # update status
      @chat_room = ChatRoom.new
      redirect_to action: "chat_rooms/index"
    else current_user
    end
  end

  def pin_user
    # Obtain the specific chat request
    @chat_request = ChatRequest.find(params[:id])
    # Check whether user is asker or receiver and toggle pin status accordingly
    if current_user == @chat_request.asker
      @chat_request.update(receiver_is_pinned: toggle_pin(@chat_request.receiver_is_pinned))
    else
      @chat_request.update(asker_is_pinned: toggle_pin(@chat_request.asker_is_pinned))
    end
    # Save and redirect
    if @chat_request.save!
      redirect_to chat_requests_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def toggle_pin(is_pinned)
    return is_pinned == true ? false : true
  end
end
