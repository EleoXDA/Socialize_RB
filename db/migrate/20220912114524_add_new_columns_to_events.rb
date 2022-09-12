class AddNewColumnsToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :theme, :string
    add_column :events, :price, :integer
    add_column :events, :description, :text
    add_column :events, :date, :date
    add_column :events, :time, :time
    add_column :events, :location, :string
  end
end
