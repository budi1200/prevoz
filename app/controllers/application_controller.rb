class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login
  
  private

  def logged_in?
      @Current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end

  helper_method :logged_in?
end
