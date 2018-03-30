class UsersController < ApplicationController
    skip_before_action :require_login

    def new
        @User = User.new
    end

    def create
        @User = User.new(allowed_params)
        if @User.save
            redirect_to root_path, notice: 'Thanks'
        else
            render :new
        end
    end

    private def allowed_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
