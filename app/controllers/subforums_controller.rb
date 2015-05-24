class SubforumsController < ApplicationController

  def index
    @subforums = Subforum.all if !Subforum.all.empty?
  end

end