require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  test "the truth" do
    p blogs(:my_blog).authors
  end
end
