require 'test_helper'

class Web::CommentsControllerTest < ActionController::TestCase
  include FactoryGirl::Syntax::Methods

  test "create" do
    test_post = create :post
    test_params = attributes_for(:comment)

    post :create, :post_id => test_post.id, :comment => test_params

    assert_response :redirect
  end

  test "destroy" do
    test_comment = create :comment

    delete :destroy, :id => test_comment.id, :post_id => test_comment.post.id

    assert_response :redirect
  end
end
