class AddNameToChatroom < ActiveRecord::Migration[7.0]
  def change
    add_column :chat_rooms, :name, :string
  end
end
