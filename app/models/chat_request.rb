class ChatRequest < ApplicationRecord
  belongs_to :asker, class_name: "User"
  belongs_to :receiver, class_name: "User"
  has_one :chat_room
  enum status: { pending: 0, confirmed: 1, rejected: -1 }
end
