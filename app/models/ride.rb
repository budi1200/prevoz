class Ride < ApplicationRecord
  validates :max_people, :desc_car, :price, :insurance, :start_id, :end_id, :rdate, :time, :presence => true
  belongs_to :user
  belongs_to :start, :class_name => 'City', :foreign_key => 'start_id'
  belongs_to :end, :class_name => 'City', :foreign_key => 'end_id'

end
