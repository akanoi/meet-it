class AddTypeToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :type, :integer
  end
end
