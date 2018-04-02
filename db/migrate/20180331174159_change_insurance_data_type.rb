class ChangeInsuranceDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :rides, :insurance, :integer
  end
end
