require "test_helper"

class LikedPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liked_property = liked_properties(:one)
  end

  test "should get index" do
    get liked_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_liked_property_url
    assert_response :success
  end

  test "should create liked_property" do
    assert_difference("LikedProperty.count") do
      post liked_properties_url, params: { liked_property: {  } }
    end

    assert_redirected_to liked_property_url(LikedProperty.last)
  end

  test "should show liked_property" do
    get liked_property_url(@liked_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_liked_property_url(@liked_property)
    assert_response :success
  end

  test "should update liked_property" do
    patch liked_property_url(@liked_property), params: { liked_property: {  } }
    assert_redirected_to liked_property_url(@liked_property)
  end

  test "should destroy liked_property" do
    assert_difference("LikedProperty.count", -1) do
      delete liked_property_url(@liked_property)
    end

    assert_redirected_to liked_properties_url
  end
end
