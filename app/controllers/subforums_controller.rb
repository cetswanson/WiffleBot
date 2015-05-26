class SubforumsController < ApplicationController

  def index
    @subforums = Subforum.all if !Subforum.all.empty?
  end

  def new
    @subforum = Subforum.new
  end

  def create
    user = current_user if current_user
    @subforum = user.subforums.build(subforum_params)

    if @subforum.save
      redirect_to subforum_topics_path(@subforum)
    else
      redirect_to new_subforum_path
    end
  end

  private

  def subforum_params
    params.require(:subforum).permit(:title, :description, :user_id)
  end

end