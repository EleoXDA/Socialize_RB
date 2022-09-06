class AddAskerAndReceiverToChatRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :chat_requests, :asker_is_pinned, :boolean, default: false
    add_column :chat_requests, :receiver_is_pinned, :boolean, default: false
  end
end
