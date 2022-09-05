class AddReferenceToChatRequest < ActiveRecord::Migration[7.0]
  def change
    add_reference :chat_requests, :asker, foreign_key: { to_table: :users }
    add_reference :chat_requests, :receiver, foreign_key: { to_table: :users }
  end
end
