class AddNicknameToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :nickname, :string
  end
end
