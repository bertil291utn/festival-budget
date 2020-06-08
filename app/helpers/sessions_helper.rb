module SessionsHelper
  def sign_in?
    return true unless current_user.nil?

    return false
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    current_user ||= User.find(session[:user_id])
    current_user
  end
end
