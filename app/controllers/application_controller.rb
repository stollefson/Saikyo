class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_siteadmin

  def current_siteadmin
    @current_siteadmin ||= Siteadmin.find_by_id(session[:siteadmin_id]) if session[:siteadmin_id]
  end
end
