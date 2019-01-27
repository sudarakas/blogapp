class ApplicationController < ActionController::Base
    helper_method :logged_user, :verify_session
    def logged_user
        @logged_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def verify_session
        !!logged_user
    end

end
