module ApplicationHelper
  def current_path(controlador, actionable = nil)
    params[:controller] == controlador && (params[:action] == actionable unless actionable.nil?)
  end
end
