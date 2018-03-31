class ChangeInsuranceDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :Rides, :insurance, :integer
  end
end
