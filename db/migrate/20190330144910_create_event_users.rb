class CreateEventUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_users do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :role

      t.timestamps
    end

    add_index :event_users, [:user_id, :event_id]
    add_index :event_users, [:event_id, :user_id]
  end
end
