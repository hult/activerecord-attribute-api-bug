require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "we can reach an author's readers" do
    p authors(:f_scott).readers
  end
end
