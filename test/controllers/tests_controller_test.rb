require 'test_helper'

class TestsControllerTest < ActionController::TestCase

  include FactoryGirl::Syntax::Methods

  test "create" do
    params = {:username => "admin", :password => "temp"}
    post: create, params
    assert_responce :redirect
  end

end
