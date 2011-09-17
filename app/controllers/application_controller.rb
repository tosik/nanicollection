class ApplicationController < ActionController::Base
  #protect_from_forgery
end

def current_user
  @current_user ||= User.first
end
