# write a test to verify that the caesar_cipher method works as expected

require 'minitest/autorun'
require_relative 'caesar_cipher'

class CaesarCipherTest < Minitest::Test
  def test_caesar_cipher
    assert_equal 'bcd', caesar_cipher('abc', 1)
    assert_equal 'abc', caesar_cipher('xyz', 3)
    assert_equal 'abc', caesar_cipher('abc', 26)
    assert_equal 'abc', caesar_cipher('abc', 0)
    assert_equal 'abc', caesar_cipher('abc', 52)
  end
end
