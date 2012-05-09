require 'open-uri'
module Feed
  class Pull

    attr_reader :rss
    def initialize(podcast)
      raise 'should be Podcast object' unless podcast.is_kind_of(Podcast)
      @rss = SimpleRSS.parse(open(podcast.url).read)
    end

    def items
      Feed::Item.initialize_from_entries(rss.entries)
    end
  end
end
