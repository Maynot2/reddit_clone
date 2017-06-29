class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to stories_path
      flash[:notice] = "Story Submission succeeded"
    else
      render action: 'new'
    end
  end

  private

    def story_params
      params.require(:story).permit(:name, :link)
    end

end
