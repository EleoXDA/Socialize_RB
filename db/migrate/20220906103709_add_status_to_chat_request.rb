class AddStatusToChatRequest < ActiveRecord::Migration[7.0]
  def change
    add_column :chat_requests, :status, :integer, default: 0, null: false
  end
end
