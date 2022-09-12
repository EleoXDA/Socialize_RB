class UsersController < ApplicationController
  def index
    # filter by language
    @users = @users.joins(:languages).where(languages: {name: params[:language] }) if params[:language]
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

  private

  def user_params
    params.require(:user).permit(:photo, :location)
  end
end
