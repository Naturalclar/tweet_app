require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_index_url
    assert_response :success
  end
  test "should get new" do
    get "/posts/new"
    assert_response :success
  end
  test "should be able to post" do
    post "/posts/create", { params: { content:"foo" }}
    assert_response :redirect
  end
end
