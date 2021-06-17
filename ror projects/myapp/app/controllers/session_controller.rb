class SessionController < ApplicationController
    def destroy
        session[:user_id]=nil
        redirect_to root_path, notice: "succussfully logout"
    end

    def new

    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id]=user.id
            redirect_to root_path,notice: "loggedin successfuly"
        else
            flash[:alert]="invalid credentials"
            render :new
        end
    end
end