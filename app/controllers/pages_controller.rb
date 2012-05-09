class PagesController < ApplicationController
  def index
    @podcasts = Feed::Pull.new(Podcast.first) 
  end
end
