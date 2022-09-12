class AddReferenceToEvents < ActiveRecord::Migration[7.0]
  def change
   add_reference :events, :users, foreign_key: true
  end
end
