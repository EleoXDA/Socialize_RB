require "open-uri"

class Event < ApplicationRecord
  # after_create :set_default_event_avatar
  has_one_attached :photo
  belongs_to :user

  # def set_default_event_avatar
  #   return if photo.attached?

  #   path = "https://res.cloudinary.com/dp6zhyocx/image/upload/v1662046666/pqwya0pvqts4ubv0eqi6.jpg"
  #   file = URI.open(path)
  #   photo.attach(io: file, filename: "userphoto.png", content_type: "image/png")
  #   save
  # end
end
