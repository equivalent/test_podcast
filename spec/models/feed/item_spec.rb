#require 'spec_helper'
#describe Feed::Item do
#  xit 'should have title'
#  xit 'should have link'
#  xit 'should have width'
#  xit 'should have height'
#end
#this will be refactored to Item model

describe Feed::Item do
  let(:item){demo_feed_pull.first}

  it 'should have title' do
    item.title.should be_present
  end
  it 'should have url' do
    item.guid.should be_present
  end
end
