class RemoveColumnFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :event_creator_id
  end
end
