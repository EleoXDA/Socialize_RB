class ChatRoom < ApplicationRecord
  # belongs_to :chat_request
  has_many :messages
end
