require 'spec_helper'
describe Feed::Pull do

  xit 'should be able to read the XML'
  describe 'initialization' do
    it 'should raise exception if non Podcast object provided as parameter' do
      lambda{Feed::Pull.new('hello')}.should raise_exception
    end

    it 'should initialize correctly if Podcast object provided' do
      lambda{Feed::Pull.new(Podcast.last)}.should_not raise_exception
    end
  end

  describe 'instance methods' do
    let(:feed){demo_feed_pull} #in spec_helper
    describe 'items'
      it 'should have many items' do
        feed.items.count.should == 138
      end

      it 'item should be instance of Feed::Item' do
        feed.items.first.should be_kind_of(Feed::Item)
    end 
  end
end


