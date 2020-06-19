class ApplicationController < ActionController::Base
  before_action :require_login
  include SessionsHelper
  include ApplicationHelper

  def require_login
    redirect_to main_path unless sign_in?
  end
end
