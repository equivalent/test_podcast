module Feed
  class Item
    class << self
      def initialize_from_entries(entries)
        entries.collect{|entry| Feed::Item.new(entry)}
      end
    end

    def initialize(item_hash)
      @title =item_hash['title']
      @description =item_hash['description']
      @guid =item_hash['guid']
      @pub_date =item_hash['pubDate']
    end

    def display_title
      @title
    end

    def display_description
      @description || 'no description'
    end

    def url
      @guid
    end

    def file
      url #and some other magic if needed
    end

    # def player
    #   # we can also have general class for player (Player) witch will File.open(feed_item.url, 'r') and play that in Player
    #   Player.new(self.url)
    # end 
  end
end
