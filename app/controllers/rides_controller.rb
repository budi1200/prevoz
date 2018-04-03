class RidesController < ApplicationController
    skip_before_action :require_login, :except=>[:new,:create]

    def index
        @date = Date.today
        @Rides = Ride.where(:rdate => Date.today)
        if((Date.parse(params[:dat]) rescue ArgumentError) != ArgumentError)
            @date = Date.parse(params[:dat])
            @Rides = Ride.where(:rdate => params[:dat])
        elsif(params[:dat] != nil)
            redirect_to root_path
            flash[:alert] = 'Invalid date'
        end
    end

    def show
        @Ride = Ride.find(params[:id])
        @User = User.find(@Ride.user_id)
    end

    def new
        @User = logged_in?
        @Ride = Ride.new
    end

    def edit
        @Ride = Ride.find(params[:id])
        @User = logged_in?
    end

    def update
        ride = Ride.find(params[:id])

        if(ride.update(ride_params))
            redirect_to ride_path
        else
            flash[:alert] = ride.errors.full_messages
            redirect_to ride_edit_path(ride.id)
        end
    end

    def destroy
        @Ride = Ride.find(params[:id])
        @Ride.destroy

        redirect_to myrides_path
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
            params.require(:ride).permit(:rdate, :time, :max_people, :desc_car, :price, :start_id, :end_id, :desc, :user_id, :insurance)
        end
end
