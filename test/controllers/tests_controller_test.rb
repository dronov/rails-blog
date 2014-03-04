require 'test_helper'

class TestsControllerTest < ActionController::TestCase

  include FactoryGirl::Syntax::Methods

  test "create" do
    @controller = SessionsController.new
    params = {:username => "admin", :password => "temp"}
    post :create, params
    assert_responce :success
  end

  test "destroy" do
    session[:username] = "admin"
    assert_response :success
    assert_equal nil, session[:username] = nil
  end

end
