class CreateEventsRequirements < ActiveRecord::Migration[5.2]
  def change
    create_join_table :events, :requirements do |t|
      t.index [:event_id, :requirement_id]
    end
  end
end
