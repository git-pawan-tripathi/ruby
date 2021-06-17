class ApplicationController < ActionController::Base

    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            #@user=User.find(session[:user_id]) it gives error if user not exist
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def require_user_logged_in
        redirect_to sign_in_path,alert: "you must be logged in" if Current.user.nil?
    end
end
