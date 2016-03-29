class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, :notice => "Welcome to TeamGathering"
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end