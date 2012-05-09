require 'spec_helper'

def demo_feed
  file = File.open "#{Rails.root.to_s}/spec/external_content/feed_samples.xml", 'r'
  file.read
end

describe Feed do
  before :all do
    @feed = Feed.new
    @feed.stub!(:rss).and_return(demo_feed)
  end

  xit 'should be able to read the XML'do
  end

  it 'should have many items' do
    @feed.items.count.should == 138
  end
 
  #this will be refactored to Item model
  describe 'item' do
    let(:item){ @feed.first}
    it 'should have title' do
      item.title.should be_present
    end
    it 'should have url' do
      item.guid.should be_present
    end
    
  end
  
end


