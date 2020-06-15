# frozen_string_literal: true

module ApplicationHelper
  def current_page(controlador, actionable = nil)
    params[:controller] == controlador && (unless actionable.nil?
                                             params[:action] == actionable
                                           end)
  end

  def title_navbar
    result = if current_page('transactions', 'index')
               'savings with festival'
             elsif current_page('transactions', 'no_festival')
               'savings no festival'
             elsif current_page('users', 'new')
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
    if current_page('sessions', 'index') || current_page('users', 'index')
      return true
    end

    false
  end
end
