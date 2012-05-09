require 'spec_helper'
describe Feed::Pull do
  let(:feed){demo_feed_pull} #in spec_helper

  xit 'should be able to read the XML'do
  end

  describe 'instance method items'
    it 'should have many items' do
      feed.items.count.should == 138
    end

    it 'item should be Feed::Item' do
      feed.items.first.should be_kind_of(Feed::Item)
  end 
end


