class UsersController < ApplicationController

  before_action :signed_in_user,only: [:edit,:update]
  before_action :correct_user,only: [:edit,:update]

  def new
    @user = User.new
  end

  def show
    @user=User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = 'User was successfully created.'
      redirect_to @user
    else
      render "new"
      # wants.html { render :action => "new" }
      # wants.xml { render :xml => @user.errors, :status => :unprocessable_entity }
    end
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def correct_user
    @user=User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

  def user_params
    params.require( :user ).permit( :password, :password_confirmation, :name, :email )
  end
end