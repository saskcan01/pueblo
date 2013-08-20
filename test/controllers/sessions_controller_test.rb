require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "shold login" do
    alice = users(:one)
    post :create, name: alice.name, password: 'secret'
    assert_redirected_to tasks_url
    assert_equal alice.id, session[:user_id]
  end

  test "should fail to login" do
    alice = users(:one)
    post :create, name: alice.name, password: 'wrong'
    assert_redirected_to login_url
  end

  test "should logout" do
    delete :destroy
    assert_redirected_to login_url
  end

end
