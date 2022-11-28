require "application_system_test_case"

class AdminTypesTest < ApplicationSystemTestCase
  setup do
    @admin_type = admin_types(:one)
  end

  test "visiting the index" do
    visit admin_types_url
    assert_selector "h1", text: "Admin types"
  end

  test "should create admin type" do
    visit admin_types_url
    click_on "New admin type"

    click_on "Create Admin type"

    assert_text "Admin type was successfully created"
    click_on "Back"
  end

  test "should update Admin type" do
    visit admin_type_url(@admin_type)
    click_on "Edit this admin type", match: :first

    click_on "Update Admin type"

    assert_text "Admin type was successfully updated"
    click_on "Back"
  end

  test "should destroy Admin type" do
    visit admin_type_url(@admin_type)
    click_on "Destroy this admin type", match: :first

    assert_text "Admin type was successfully destroyed"
  end
end
