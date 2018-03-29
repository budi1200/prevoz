class AddReferences < ActiveRecord::Migration[5.1]
  def change
    add_column :rides, :start_id, :integer
    add_column :rides, :end_id, :integer
  end
end
