class UsersController < ApplicationController
  @markers = @users.geocoded.map do |user|
    {
      lat: user.latitude,
      lng: user.longitude,
      info_window: render_to_string(partial: "info_window", locals: {user: user})
    }
  end
end
