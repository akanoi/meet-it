class CreateEventRequirements < ActiveRecord::Migration[5.2]
  def change
    create_join_table :events, :requirements do |t|
      t.index [:event_id, :requirement_id]
      # t.index [:product_id, :customer_id]
    end
  end
end
