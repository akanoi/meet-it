class AddContactInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :skype, :string
    add_column :users, :phone, :string
    add_column :users, :telegram, :string
  end
end
