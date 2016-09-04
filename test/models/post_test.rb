require 'test_helper'
require 'json'

class PostTest < ActiveSupport::TestCase
  test "Posts are posted and Json conversion" do
    posts = Post.all

    assert_equal 2, posts.size

    json_hash = the_json_func(Post.all)

    assert_kind_of String, json_hash

    ruby_hash = JSON.parse(json_hash)

    assert_kind_of Hash, ruby_hash

  end

end
