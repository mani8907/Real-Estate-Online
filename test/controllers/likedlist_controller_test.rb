require "test_helper"

class LikedlistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get likedlist_index_url
    assert_response :success
  end

  test "should get new" do
    get likedlist_new_url
    assert_response :success
  end
end
