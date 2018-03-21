class AddInfoToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string, limit: 255
    add_column :users, :password, :string, limit: 255
    add_column :users, :email, :string, limit: 255
  end
end
