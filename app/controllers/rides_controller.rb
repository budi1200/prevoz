class RidesController < ApplicationController
    skip_before_action :require_login, :except=>[:new,:create]

    def index
        @Rides = Ride.where(:time => Date.today)
    end

    def show
        @Ride = Ride.find(params[:id])
        @User = User.find(@Ride.user_id)
    end

    def new
        @User = logged_in?
        @Ride = Ride.new
    end

    def create
        @User = logged_in?
        @Ride = @User.rides.new(ride_params)

        if(@Ride.save)
            redirect_to @Ride
        else
            flash[:alert] = @Ride.errors.full_messages
            render 'new'
        end
    end

    private def ride_params
            params.require(:ride).permit(:time, :max_people, :desc_car, :price, :start_id, :end_id, :desc, :user_id, :insurance)
        end
end
