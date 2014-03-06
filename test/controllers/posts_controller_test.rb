require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  include FactoryGirl::Syntax::Methods

  test "new" do
    test_user = create :user
    session[:username] = test_user.username

    get :new
    assert_response :success
  end

  test "create" do
    test_user = create :user
    session[:username] = test_user.username
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
    test_user = create :user
    session[:username] = test_user.username
    post = create :post

    get :edit, :id => post.id
    assert_response :success
  end

  test "update" do
    test_user = create :user
    session[:username] = test_user.username
    test_post = create :post
    params = attributes_for(:post)

    patch :update, :id => test_post.id, :post => params

    assert_response :redirect
    test_post.reload
    assert_equal params[:title], test_post.title
  end

  test "destroy" do
    test_user = create :user
    session[:username] = test_user.username
    test_post = create :post
    delete :destroy, :id => test_post.id

    assert_response :redirect
    assert_equal false, Post.exists?(test_post.id)
  end

end
