class TopicsController < ApplicationController

  def index
    @topics = Topic.all if !Topic.all.empty?
  end

  def show
    @topic = Topic.find(params[:id])
  end
end