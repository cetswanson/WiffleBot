class RepliesController < ApplicationController

  def new
    @topic = Topic.find(params[:topic_id])

    if current_user
      @reply = @topic.replies.new
    else
      redirect_to topic_path(@topic)
    end
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @reply = @topic.replies.build(reply_params)

    if @reply.save
      redirect_to topic_path(@topic)
    else
      redirect_to new_topic_reply_path(@topic.id)
    end
  end

  private

  def reply_params
    params.require(:reply).permit(:body).merge(user_id: current_user)
  end

end