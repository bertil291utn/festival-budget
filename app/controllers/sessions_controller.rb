class SessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    user = User.find_by_username(params[:username])
    if user
      log_in user
      redirect_to root_url, notice: 'Logged in!'
    else
      render :new, alert: 'Username is invalid'
    end
  end

  def destroy
    log_out
    redirect_to root_url, notice: 'Logged out!'
  end
end
