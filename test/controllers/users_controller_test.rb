require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "user index should not exist" do
    assert_raise ActionController::RoutingError do
      get users_path
    end
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { password: 'secret', password_confirmation: 'secret', username: 'test' } }
    end

    assert_redirected_to root_path
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
