require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "Posts are posted" do
    posts = Post.all

    assert_equal 2, posts.size
  end
end
