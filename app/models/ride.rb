class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :city, :class_name => "City"
  belongs_to :city, :class_name => "City"
end
