class AddColumnsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :place_id, :integer
    add_column :events, :status, :boolean
    add_column :events, :privacy, :boolean
  end
end
