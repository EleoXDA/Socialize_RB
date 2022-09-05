class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room
  validates :content, presence: true
end
