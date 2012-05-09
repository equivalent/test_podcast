#require 'spec_helper'
#describe Feed::Item do
#  xit 'should have title'
#  xit 'should have link'
#  xit 'should have width'
#  xit 'should have height'
#end
#this will be refactored to Item model

describe Feed::Item do
  describe 'class methods'do
    describe 'initialize_from_entries' do
      it 'should initialize new Feed::Item for each entry' do
        entries = [{:entry_one=>''},{ :entry_two=>''}]
        Feed::Item.initialize_from_entries(entries).should_receive(:new).twice
      end

    end
  end


  let(:item){demo_feed_pull.first}

  it 'should have title' do
    item.display_title.should be_present
    item.display_title.should be "Behind The Iron Curtain 042 with UMEK"
  end

  it 'should have url' do
    item.url.should be_present
    item.url.should be "http://podcast.sixteenofive.com/UMEK-BTIC-042.mp3"
  end
end
