require "application_system_test_case"

class UserAdressesTest < ApplicationSystemTestCase
  setup do
    @user_adress = user_adresses(:one)
  end

  test "visiting the index" do
    visit user_adresses_url
    assert_selector "h1", text: "User adresses"
  end

  test "should create user adress" do
    visit user_adresses_url
    click_on "New user adress"

    click_on "Create User adress"

    assert_text "User adress was successfully created"
    click_on "Back"
  end

  test "should update User adress" do
    visit user_adress_url(@user_adress)
    click_on "Edit this user adress", match: :first

    click_on "Update User adress"

    assert_text "User adress was successfully updated"
    click_on "Back"
  end

  test "should destroy User adress" do
    visit user_adress_url(@user_adress)
    click_on "Destroy this user adress", match: :first

    assert_text "User adress was successfully destroyed"
  end
end
