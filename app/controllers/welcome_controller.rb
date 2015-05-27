class WelcomeController < ApplicationController

  def index
    redirect_to subforums_path if current_user
  end

end