require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "Vote topic" do
    v = Vote.new
    assert v.valid? == false, "Nil topic should not be valid."
    t = Topic.new(:title => "my title")
    v.topic = t
    assert v.valid?
  end
end
