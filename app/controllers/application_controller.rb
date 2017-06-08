require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  include Pundit
  respond_to :html

  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
 
  private
 
    def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action."
      redirect_back(fallback_location: root_path)
    end
end
