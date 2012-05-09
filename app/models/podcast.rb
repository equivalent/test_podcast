#yes, this should be in database but I had --skip-activerecord  when I was creating new Rails project
class Podcast # < ActiveRecord::Base
  class << self
    def first
      Podcast.new('http://www.zweistein.si/podcast/1605.xml')
    end
  end

  attr_reader :url

  def initialize(url)
    @url=url
  end

  def playlists
    @playlists ||= Feed::Pull.new(self).items
  end
end
