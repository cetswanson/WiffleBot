class TopicsController < ApplicationController

  def index
    @subforum = Subforum.find(params[:subforum_id])
    # @topics = @subforum.topics.all if !@subforum.topics.all.empty?
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def create
    user = current_user if current_user
    topic = user.topics.build(topic_params)

    if topic.save
      redirect_to topic_path(topic)
    else
      redirect_to topics_path
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :body, :user_id)
  end

end