class UsersController < ApplicationController
  def index
    @users = User.all
<<<<<<< HEAD
=======
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: user)
        # image_url: helpers.asset_url("")
      }
    end
>>>>>>> master
  end
end
