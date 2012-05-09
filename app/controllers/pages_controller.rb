class PagesController < ApplicationController
  def index
    @podcasts = Feed::Pull.new
  end
end
