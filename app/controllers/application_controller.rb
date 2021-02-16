class ApplicationController < ActionController::Base
    helper_method :logout_user, :current_user, :is_logged_in?
    before_action :current_user


    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def is_logged_in?
        !!current_user
    end

    def logout_user
        session[:user_id] = nil
    end

end
