require "test_helper"

class AdminTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_type = admin_types(:one)
  end

  test "should get index" do
    get admin_types_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_type_url
    assert_response :success
  end

  test "should create admin_type" do
    assert_difference("AdminType.count") do
      post admin_types_url, params: { admin_type: {  } }
    end

    assert_redirected_to admin_type_url(AdminType.last)
  end

  test "should show admin_type" do
    get admin_type_url(@admin_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_type_url(@admin_type)
    assert_response :success
  end

  test "should update admin_type" do
    patch admin_type_url(@admin_type), params: { admin_type: {  } }
    assert_redirected_to admin_type_url(@admin_type)
  end

  test "should destroy admin_type" do
    assert_difference("AdminType.count", -1) do
      delete admin_type_url(@admin_type)
    end

    assert_redirected_to admin_types_url
  end
end
