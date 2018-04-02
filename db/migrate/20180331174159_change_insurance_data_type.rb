class ChangeInsuranceDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :rides, :insurance, 'integer USING CAST(insurance AS integer)'
  end
end
