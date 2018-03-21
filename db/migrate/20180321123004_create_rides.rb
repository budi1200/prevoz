class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.timestamp :time
      t.integer :max_people
      t.string :desc_car
      t.string :price
      t.string :insurance
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
