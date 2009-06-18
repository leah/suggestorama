require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  test "Require title" do
    t = Topic.new
    assert t.valid? == false, "Expected blank topic to not be valid."
    t.title = "my title"
    assert t.valid?, "Topic with a title should be valid."
  end
  
  test "Topic has votes" do
    t = Topic.new(:title => "my title")
    assert t.votes == []
  end
end
