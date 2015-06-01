class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :session_in!
  helper_method :current_user

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def session_in!(user)
    session[:user_id] = user.id
  end

  def session_out!
    session[:user_id] = nil
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

end
