class AddReferences < ActiveRecord::Migration[5.1]
  def change
    add_column :rides, :city_start_id, :integer
    add_column :rides, :city_end_id, :integer
  end
end
