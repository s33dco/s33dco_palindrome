require "test_helper"

class S33dcoPalindromeTest < Minitest::Test
  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RacECaR".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam!".palindrome?
  end

  def test_numeric_palindrome
    assert '12345654321'.palindrome?
  end

  def test_aplha_numeric_punctionation_palindrome
    assert '5471 - RacEcAR, @ 17:45'.palindrome?
  end

  def test_whitespace_is_not_palindrome
    refute "\t\t\n\n              \n\t".palindrome?
  end
end
