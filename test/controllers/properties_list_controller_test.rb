require "test_helper"

class PropertiesListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get properties_list_index_url
    assert_response :success
  end
end
