class AddLinkedInToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :linkedin_url, :string
  end
end
