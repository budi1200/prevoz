class AddTimeandDatetorides < ActiveRecord::Migration[5.1]
  def change
    remove_column :rides, :time
  end
end
