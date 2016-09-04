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

  test "Time duration is accurate" do
  	an_hour = time_desc(60*60)
  	a_minute = time_desc(60)
  	more_minute = time_desc(121)
  	a_second = time_desc(1)
  	a_day = time_desc(60*60*24)
  	more_day = time_desc(60*60*24*3)
  	a_month = time_desc(60*60*24*30)
  	more_month = time_desc(60*60*24*30*4)
  	a_year = time_desc(60*60*24*365)
  	more_year = time_desc(60*60*24*365*5)


  	assert_equal an_hour, "An hour ago"
  	assert_equal a_minute, "A minute ago"
  	assert_equal more_minute, "2 minutes ago"
  	assert_equal a_second, "Less than a minute ago"
  	assert_equal a_day, "1 day ago"
  	assert_equal more_day, "3 days ago"
  	assert_equal a_month, "About a month ago"
  	assert_equal more_month, "4 months ago"
  	assert_equal a_year, "A year ago"
  	assert_equal more_year, "5 years ago"


  end

end
