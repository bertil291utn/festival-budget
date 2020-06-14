module ApplicationHelper
  def current_page(controlador, actionable = nil)
    params[:controller] == controlador && (params[:action] == actionable unless actionable.nil?)
  end
end
