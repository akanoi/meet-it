class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :question
      t.string :answer
      t.integer :user_to_id
      t.boolean :anon

      t.timestamps
    end
  end
end
