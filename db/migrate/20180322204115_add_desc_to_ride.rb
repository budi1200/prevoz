class AddDescToRide < ActiveRecord::Migration[5.1]
  def change
    add_column :rides, :desc, :string
  end
end
