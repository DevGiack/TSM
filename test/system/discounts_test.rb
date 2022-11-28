require "application_system_test_case"

class DiscountsTest < ApplicationSystemTestCase
  setup do
    @discount = discounts(:one)
  end

  test "visiting the index" do
    visit discounts_url
    assert_selector "h1", text: "Discounts"
  end

  test "should create discount" do
    visit discounts_url
    click_on "New discount"

    check "Active" if @discount.Active
    fill_in "Discount percent", with: @discount.Discount_percent
    fill_in "Name", with: @discount.Name
    click_on "Create Discount"

    assert_text "Discount was successfully created"
    click_on "Back"
  end

  test "should update Discount" do
    visit discount_url(@discount)
    click_on "Edit this discount", match: :first

    check "Active" if @discount.Active
    fill_in "Discount percent", with: @discount.Discount_percent
    fill_in "Name", with: @discount.Name
    click_on "Update Discount"

    assert_text "Discount was successfully updated"
    click_on "Back"
  end

  test "should destroy Discount" do
    visit discount_url(@discount)
    click_on "Destroy this discount", match: :first

    assert_text "Discount was successfully destroyed"
  end
end
