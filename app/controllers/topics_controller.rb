class TopicsController < ApplicationController

  def index
    @topics = Topic.all if !Topic.all.empty?
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
end