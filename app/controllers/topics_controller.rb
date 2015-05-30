class TopicsController < ApplicationController

  def index
    @subforum = Subforum.find(params[:subforum_id])
  end

  def show
    @subforum = Subforum.find(params[:subforum_id])
    @topic = Topic.find(params[:id])
  end

  def new
    @subforum = Subforum.find(params[:subforum_id])
    @topic = Topic.new
  end

  def create
    subforum = Subforum.find(params[:subforum_id])
    topic = subforum.topics.build(topic_params)

    if topic.save
      redirect_to subforum_topics_path
    else
      redirect_to subforum_topics_path
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :body).merge(user: current_user)
  end

end