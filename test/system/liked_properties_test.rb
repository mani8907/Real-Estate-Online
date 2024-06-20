require "application_system_test_case"

class LikedPropertiesTest < ApplicationSystemTestCase
  setup do
    @liked_property = liked_properties(:one)
  end

  test "visiting the index" do
    visit liked_properties_url
    assert_selector "h1", text: "Liked properties"
  end

  test "should create liked property" do
    visit liked_properties_url
    click_on "New liked property"

    click_on "Create Liked property"

    assert_text "Liked property was successfully created"
    click_on "Back"
  end

  test "should update Liked property" do
    visit liked_property_url(@liked_property)
    click_on "Edit this liked property", match: :first

    click_on "Update Liked property"

    assert_text "Liked property was successfully updated"
    click_on "Back"
  end

  test "should destroy Liked property" do
    visit liked_property_url(@liked_property)
    click_on "Destroy this liked property", match: :first

    assert_text "Liked property was successfully destroyed"
  end
end
