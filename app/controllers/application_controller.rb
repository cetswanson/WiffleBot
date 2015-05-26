class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :session_in!

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def session_in!(user)
    session[:user_id] = user.id
  end

  def session_out!
    session[:user_id] = nil
  end

  def authenticate_user!(return_point = request.url)
    if !current_user
      set_return_point(return_point)
      redirect_to root_path
    end
  end

end
