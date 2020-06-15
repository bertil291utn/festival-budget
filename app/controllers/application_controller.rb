class ApplicationController < ActionController::Base
  before_action :require_login
  include SessionsHelper
  include ApplicationHelper

  def require_login
    redirect_to main_path, alert: 'You must be logged in to access' unless sign_in?
  end
end
