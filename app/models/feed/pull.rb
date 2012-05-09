module Feed
  class Pull
    require 'open-uri'
    attr_reader :rss
    def initialize(url=nil)
      url = 'http://www.zweistein.si/podcast/1605.xml' if url.nil? # delete this if needed
      @rss = SimpleRSS.parse(open(url).read)
    end

    def items
      Feed::Item.initialize_from_entries(rss.entries)
    end
  end
end
