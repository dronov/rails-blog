require 'test_helper'

class Web::SessionsControllerTest < ActionController::TestCase

  include FactoryGirl::Syntax::Methods

  test "create" do
    test_user = create :user
    session[:username] = test_user.username
    params = {:username => test_user.username, :password => test_user.password}
    post :create, params
    assert_response :redirect
  end

  test "destroy" do
    test_user = create :user
    session[:username] = test_user.username
    assert_response :success
    assert_equal nil, session[:username] = nil
  end

end
