class UsersController < ApplicationController
    skip_before_action :require_login

    def new
        @User = User.new
    end

    def create
        @User = User.new(allowed_params)
        if @User.save
            redirect_to root_path, notice: 'Registracija Uspešna'
        else
            render :new
        end
    end

    def myrides
        if(!logged_in?)
            redirect_to login_path
        else
        @Rides = Ride.where(:user_id => logged_in?.id)
        end
    end

    def profile
        @User = logged_in?
    end

    def edit
        @User = logged_in?
    end

    def update
        user = User.find(params[:id])

        if(user.update(update_params))
            redirect_to profile_path
        else
            flash[:alert] = user.errors.full_messages
            redirect_to user_edit_path(user.id)
        end
    end

    private def allowed_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

    private def update_params
        params.require(:user).permit(:email, :password_digest, :first_name, :last_name, :phone, :username)
    end
end
