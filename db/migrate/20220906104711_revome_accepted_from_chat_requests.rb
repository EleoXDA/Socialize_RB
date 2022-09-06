class RevomeAcceptedFromChatRequests < ActiveRecord::Migration[7.0]
  def change
    remove_column :chat_requests, :accepted, :booelan
  end
end
