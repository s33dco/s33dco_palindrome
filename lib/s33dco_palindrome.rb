require "s33dco_palindrome/version"

module S33dcoPalindrome
  class Error < StandardError; end

  def palindrome?
    processed_content == processed_content.reverse && processed_content.length > 0
  end

  private
    def processed_content
      self.to_s.scan(/[a-z0-9]/i).join.downcase
    end

end


class String
  include S33dcoPalindrome
end

class Integer
  include S33dcoPalindrome
end

