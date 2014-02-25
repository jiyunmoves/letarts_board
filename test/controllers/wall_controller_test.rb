require 'test_helper'

class WallControllerTest < ActionController::TestCase
  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get post" do
    get :post
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get comment" do
    get :comment
    assert_response :success
  end

end
