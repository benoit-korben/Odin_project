require 'test/unit'
require_relative 'substring'

class TestSubstring < Test::Unit::TestCase
  def test_substring
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    assert_equal({ "below" => 1, "low" => 1 }, substrings("below", dictionary))
    assert_equal({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }, substrings("Howdy partner, sit down! How's it going?", dictionary))
  end
end
