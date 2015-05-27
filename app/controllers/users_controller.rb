class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)

    if user.valid?
      session_in!(user)
      redirect_to subforums_path
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end