class PasswordResetController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_now
        end
        redirect_to root_path,notice: "we sent a link to the perticuler mail id"
    end
end