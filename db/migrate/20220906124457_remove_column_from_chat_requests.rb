class RemoveColumnFromChatRequests < ActiveRecord::Migration[7.0]
  def change
    remove_column :chat_requests, :pinned
  end
end
