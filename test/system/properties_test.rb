require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "should create property" do
    visit properties_url
    click_on "New property"

    fill_in "City", with: @property.city
    fill_in "Contact", with: @property.contact
    fill_in "Deposit", with: @property.deposit
    fill_in "Description", with: @property.description
    fill_in "Location details", with: @property.location_details
    fill_in "Name", with: @property.name
    fill_in "Owner name", with: @property.owner_name
    fill_in "Prop for", with: @property.prop_for
    fill_in "Square feet", with: @property.square_feet
    fill_in "Type", with: @property.type
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "should update Property" do
    visit property_url(@property)
    click_on "Edit this property", match: :first

    fill_in "City", with: @property.city
    fill_in "Contact", with: @property.contact
    fill_in "Deposit", with: @property.deposit
    fill_in "Description", with: @property.description
    fill_in "Location details", with: @property.location_details
    fill_in "Name", with: @property.name
    fill_in "Owner name", with: @property.owner_name
    fill_in "Prop for", with: @property.prop_for
    fill_in "Square feet", with: @property.square_feet
    fill_in "Type", with: @property.type
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "should destroy Property" do
    visit property_url(@property)
    click_on "Destroy this property", match: :first

    assert_text "Property was successfully destroyed"
  end
end
