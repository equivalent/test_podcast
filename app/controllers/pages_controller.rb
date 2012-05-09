class PagesController < ApplicationController
  def index
    @playlist_items = (Podcast.first.playlists)  
  end
end
