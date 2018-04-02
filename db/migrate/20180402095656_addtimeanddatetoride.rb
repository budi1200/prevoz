class Addtimeanddatetoride < ActiveRecord::Migration[5.1]
  def change
    add_column :rides, :date, :date 
    add_column :rides, :time, :string 
  end
end
