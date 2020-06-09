class ApplicationController < ActionController::Base
  before_action :require_login
  include SessionsHelper

  def require_login
    unless sign_in?
      flash[:error] = 'You must be logged in to access this section'
      redirect_to login_path
    end
  end
end
