 class ApplicationController < ActionController::Base
  extend RDL::Annotate
  protect_from_forgery with: :exception

  protected
  type '() -> User'
  def current_user
    User.first
  end
end
