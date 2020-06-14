class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def index
    @user = current_user if sign_in?
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :fullname, :email, :image)
  end
end
