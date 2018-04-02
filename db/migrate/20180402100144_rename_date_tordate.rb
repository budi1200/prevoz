class RenameDateTordate < ActiveRecord::Migration[5.1]
  def change
    rename_column :rides, :date, :rdate
  end
end
