class RemoveForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_column :chat_requests, :user_id
  end
end
