class SubforumsController < ApplicationController

  def index
    if current_user
      @subforums = Subforum.all if !Subforum.all.empty?
    else
      redirect_to root_path
    end
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
      head :bad_request
    end
  end

  private

  def subforum_params
    params.require(:subforum).permit(:title, :description, :user_id)
  end

end