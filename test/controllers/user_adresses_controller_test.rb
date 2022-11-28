require "test_helper"

class UserAdressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_adress = user_adresses(:one)
  end

  test "should get index" do
    get user_adresses_url
    assert_response :success
  end

  test "should get new" do
    get new_user_adress_url
    assert_response :success
  end

  test "should create user_adress" do
    assert_difference("UserAdress.count") do
      post user_adresses_url, params: { user_adress: {  } }
    end

    assert_redirected_to user_adress_url(UserAdress.last)
  end

  test "should show user_adress" do
    get user_adress_url(@user_adress)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_adress_url(@user_adress)
    assert_response :success
  end

  test "should update user_adress" do
    patch user_adress_url(@user_adress), params: { user_adress: {  } }
    assert_redirected_to user_adress_url(@user_adress)
  end

  test "should destroy user_adress" do
    assert_difference("UserAdress.count", -1) do
      delete user_adress_url(@user_adress)
    end

    assert_redirected_to user_adresses_url
  end
end
