class RepliesController < ApplicationController

  def new
    @subforum = Subforum.find(params[:subforum_id])
    @topic = Topic.find(params[:topic_id])
    @reply = @topic.replies.new
  end

  def create
    @subforum = Subforum.find(params[:subforum_id])
    @topic = Topic.find(params[:topic_id])
    @reply = @topic.replies.build(reply_params)

    if @reply.save
      redirect_to subforum_topic_path(@subforum, @topic)
    else
      redirect_to new_topic_reply_path(@topic.id)
    end
  end

  private

  def reply_params
    params.require(:reply).permit(:body).merge(user: current_user)
  end

end