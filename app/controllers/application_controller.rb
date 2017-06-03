class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_controller
  before_filter :authenticate_user!

protected

def layout_by_controller
  devise_controller? ? 'devise' : 'application'
end
end
