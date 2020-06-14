class SessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create index]

  def index; end
  def new; end

  def create
    user = User.find_by_username(params[:username])
    if user
      log_in user
      redirect_to root_url, notice: "Welcome #{user.fullname}"
    else
      redirect_to login_url, alert: 'Username is invalid'
    end
  end

  def destroy
    log_out
    redirect_to main_url, notice: 'Logged out!'
  end
end
