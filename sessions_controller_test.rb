require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  include FactoryGirl::Syntax::Methods

  test "create" do
    params = attributes_for(:user)
    post :create, params
    assert_responce :success
  end

  test "destroy" do
    test_user = create :user
    session[:username] = test_user.username
    assert_response :success
    assert_equal nil, session[:username] = nil
  end

end
