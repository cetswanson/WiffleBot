class TopicsController < ApplicationController

  def index
    @topics = Topic.all if !Topic.all.empty?
  end
end