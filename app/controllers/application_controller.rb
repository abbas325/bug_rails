class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def not_aunthenticatd
      redirect_to root_url, :alert => "First Log In to access this Page."
  end
end
