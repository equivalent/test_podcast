require 'open-uri'
module Feed
  class Pull

    attr_reader :rss
    def initialize(podcast)
      raise 'should be Podcast object' unless podcast.is_a?(Podcast)
      @rss = SimpleRSS.parse(open(podcast.url).read) # or maybe chache that file and load it so we won't need request
    end

    def items
      Feed::Item.initialize_from_entries(rss.entries)
    end
  end
end
