class ApplicationController < ActionController::Base

    helper_method :current_users, :logged_in?,:log_in
    def current_users
       @current_users ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def logged_in?
      !current_users
    end
    
    def require_user
      if !logged_in?
    
        flash[:alert] = "You must be logged in to perform that action."
        redirect_to root_path
      end
    end



end
