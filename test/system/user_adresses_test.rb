require "application_system_test_case"

class UserAddressesTest < ApplicationSystemTestCase
  setup do
    @user_address = user_addresses(:one)
  end

  test "visiting the index" do
    visit user_addresses_url
    assert_selector "h1", text: "User addresses"
  end

  test "should create user address" do
    visit user_addresses_url
    click_on "New user address"

    click_on "Create User address"

    assert_text "User address was successfully created"
    click_on "Back"
  end

  test "should update User address" do
    visit user_address_url(@user_address)
    click_on "Edit this user address", match: :first

    click_on "Update User address"

    assert_text "User address was successfully updated"
    click_on "Back"
  end

  test "should destroy User address" do
    visit user_address_url(@user_address)
    click_on "Destroy this user address", match: :first

    assert_text "User address was successfully destroyed"
  end
end
