class RidesController < ApplicationController
    def index
        @Rides = Ride.all
    end

    def show
        @Ride = Ride.find(params[:id])
        @User = User.find(@Ride.user_id)
    end

    def new
        @Ride = Ride.new
    end
end
