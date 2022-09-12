class UsersController < ApplicationController
  def index
    @users = User.all
    @chat_requests = ChatRequest.where(asker: current_user).or(ChatRequest.where(receiver: current_user))
    @chat_requests = @chat_requests.filter{ |chat| chat.status == "confirmed" }
    @chat_request = ChatRequest.new
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
        # image_url: helpers.asset_url("laptop.png")
      }
    end
  end

  def show
  end

  def edit

  end

  def update

  end

  private

  def user_params
    params.require(:user).permit(:photo, :location)
  end
end
