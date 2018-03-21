class City < ApplicationRecord
    has_many :city_start, :class_name => "Ride", :foreign_key => "city_start_id"
    has_many :city_end, :class_name => "Ride", :foreign_key => "city_end_id"
end
