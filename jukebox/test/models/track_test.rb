require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class TrackTest < Test::Unit::TestCase
  context "Track Model" do
    should 'construct new instance' do
      @track = Track.new
      assert_not_nil @track
    end
  end
end
