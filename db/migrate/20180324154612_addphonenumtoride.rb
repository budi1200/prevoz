class Addphonenumtoride < ActiveRecord::Migration[5.1]
  def change
    add_column :rides, :phone_num, :integer
  end
end
