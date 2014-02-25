require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  
  include FactoryGirl::Syntax::Methods

  test "the truth" do
    assert true
  end

  test "new" do
    get :new
    assert_response :success
  end

  test "create" do
    # params = {:title => "12", :text => "text"}
    # post :create, :post => params
    params = attributes_for(:post)
    post :create, :post => params
    assert_response :redirect
  end

  test "show" do
    post = create :post  
    get :show, :id => post.id
    assert_response :success
  end

  test "index" do
    get :index
    assert_response :success
  end

end
