class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|
      t.integer :type
      t.string :description

      t.timestamps
    end
  end
end
