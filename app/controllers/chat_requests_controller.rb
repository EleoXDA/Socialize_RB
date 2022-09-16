class ChatRequestsController < ApplicationController
  def index
    @all_chat_requests = ChatRequest.where(asker: current_user).or(ChatRequest.where(receiver: current_user))
    @my_requests = @all_chat_requests.select { |r| r.asker == current_user && r.pending? }
    @chat_requests_hash = { confirmed: [], rejected: [], pending: @all_chat_requests.select { |r| r.pending? } }
    @chat_requests = policy_scope(ChatRequest).all
    @chat_requests = []

    @all_chat_requests.each do |request|
      if request.confirmed?
        @chat_requests_hash[:confirmed] << request
      elsif request.rejected?
        @chat_requests_hash[:rejected] << request
      end
    end
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
    @chat_request = ChatRequest.find(params[:id])
    if @chat_request.update(status: params[:status].to_i)
      # status: confirmed
      if @chat_request.confirmed? # update status
        # raise
        @chat_room = ChatRoom.create(chat_request: @chat_request)
      end
      redirect_to users_path, status: :see_other
    else
      redirect_to action: "index", status: :unprocessable_entity
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
