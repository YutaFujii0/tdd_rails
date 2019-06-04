class StoriesController < ApplicationController
  def index
    @stories = Story.all

    some_actions_to_be_tested
  end
end
