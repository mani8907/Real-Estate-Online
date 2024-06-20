require "test_helper"

class LineProptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_propt = line_propts(:one)
  end

  test "should get index" do
    get line_propts_url
    assert_response :success
  end

  test "should get new" do
    get new_line_propt_url
    assert_response :success
  end

  test "should create line_propt" do
    assert_difference("LinePropt.count") do
      post line_propts_url, params: { line_propt: { liked_property_id: @line_propt.liked_property_id, property_id: @line_propt.property_id, quantity: @line_propt.quantity } }
    end

    assert_redirected_to line_propt_url(LinePropt.last)
  end

  test "should show line_propt" do
    get line_propt_url(@line_propt)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_propt_url(@line_propt)
    assert_response :success
  end

  test "should update line_propt" do
    patch line_propt_url(@line_propt), params: { line_propt: { liked_property_id: @line_propt.liked_property_id, property_id: @line_propt.property_id, quantity: @line_propt.quantity } }
    assert_redirected_to line_propt_url(@line_propt)
  end

  test "should destroy line_propt" do
    assert_difference("LinePropt.count", -1) do
      delete line_propt_url(@line_propt)
    end

    assert_redirected_to line_propts_url
  end
end
