#yes, this should be in database but I had --skip-activerecord  when I was creating new Rails project
class Podcast # < ActiveRecord::Base
  class << self
    def first
      Podcast.new('http://www.zweistein.si/podcast/1605.xml')
    end

    attr_reader :url

    def initialize(url)
      @url=url
    end
  end
end
