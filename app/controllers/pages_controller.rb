class PagesController < ApplicationController
  def index
    @podcasts = Feed.new
  end
end
