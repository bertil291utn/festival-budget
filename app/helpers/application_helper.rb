# rubocop:disable Layout/LineLength
module ApplicationHelper # :nodoc:
  def current_page(controlador, actionable = nil)
    params[:controller] == controlador && (params[:action] == actionable unless actionable.nil?)
  end

  def title_navbar
    result = if current_page('transactions', 'index')
               'savings with festival'
             elsif current_page('transactions', 'no_festival')
               'savings no festival'
             elsif current_page('users', 'new') || current_page?('/users')
               'register'
             elsif current_page('sessions', 'new')
               'login'
             else
               controller_name
             end
    result
  end

  def show_icon
    arrow_left = 'fa-arrow-left'
    bars = 'fa-bars'
    if current_page('transactions', 'index') || current_page('transactions', 'no_festival') || current_page('festivals', 'index')
      return bars
    end

    arrow_left
  end

  def redirect_to_action
    result = if current_page('festivals', 'show')
               festivals_path
             elsif current_page('sessions', 'new') || current_page('users', 'new')
               sessions_path
             else
               root_path
             end
    result
  end

  def no_show_nav_bar
    return true if current_page('sessions', 'index') || current_page('users', 'index')

    false
  end
end
# rubocop:enable Layout/LineLength
