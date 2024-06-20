require "application_system_test_case"

class LineProptsTest < ApplicationSystemTestCase
  setup do
    @line_propt = line_propts(:one)
  end

  test "visiting the index" do
    visit line_propts_url
    assert_selector "h1", text: "Line propts"
  end

  test "should create line propt" do
    visit line_propts_url
    click_on "New line propt"

    fill_in "Liked property", with: @line_propt.liked_property_id
    fill_in "Property", with: @line_propt.property_id
    fill_in "Quantity", with: @line_propt.quantity
    click_on "Create Line propt"

    assert_text "Line propt was successfully created"
    click_on "Back"
  end

  test "should update Line propt" do
    visit line_propt_url(@line_propt)
    click_on "Edit this line propt", match: :first

    fill_in "Liked property", with: @line_propt.liked_property_id
    fill_in "Property", with: @line_propt.property_id
    fill_in "Quantity", with: @line_propt.quantity
    click_on "Update Line propt"

    assert_text "Line propt was successfully updated"
    click_on "Back"
  end

  test "should destroy Line propt" do
    visit line_propt_url(@line_propt)
    click_on "Destroy this line propt", match: :first

    assert_text "Line propt was successfully destroyed"
  end
end
