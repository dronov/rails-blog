require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  
  include FactoryGirl::Syntax::Methods

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

  test "edit" do
    post = create :post  
    get :edit, :id => post.id
    assert_response :success
  end

  test "update" do
    testpost = create :post
    params = attributes_for(:post)
    
    patch :update, :id => testpost.id, :post => params
    
    assert_response :redirect
    testpost.reload
    assert_equal params[:title], testpost.title
  end

  test "destroy" do
    testpost = create :post
    delete :destroy, :id => testpost.id
  
    assert_response :redirect
    assert_equal false, Post.exists?(testpost.id)
  end

end
