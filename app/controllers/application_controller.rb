class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_table
    @current_table ||= Table.find(session[:table_id]) if session[:table_id]
  end
  helper_method :current_table
end
