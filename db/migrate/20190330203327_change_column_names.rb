class ChangeColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :type, :kind
    rename_column :requirements, :type, :kind
  end
end
