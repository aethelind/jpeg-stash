require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_url
    assert_response :success
  end

  # test "should get create" do
  #   post users_url, params: { user: { password: 'secret', password_confirmation: 'secret', username: 'sessions-test' } }

  #   get sessions_create_url
  #   assert_response :success
  # end

  test "should get destroy" do
    post users_url, params: { user: { password: 'secret', password_confirmation: 'secret', username: 'sessions-test' } }
    get logout_url
    assert_response :success
  end
end
