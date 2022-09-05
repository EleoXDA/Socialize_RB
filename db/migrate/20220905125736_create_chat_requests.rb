class CreateChatRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_requests do |t|
      t.boolean :accepted
      t.boolean :pinned
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
