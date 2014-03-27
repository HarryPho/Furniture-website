require 'test_helper'

class UsesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create use" do
    assert_difference('Use.count') do
      post :create, :use => { }
    end

    assert_redirected_to use_path(assigns(:use))
  end

  test "should show use" do
    get :show, :id => uses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => uses(:one).to_param
    assert_response :success
  end

  test "should update use" do
    put :update, :id => uses(:one).to_param, :use => { }
    assert_redirected_to use_path(assigns(:use))
  end

  test "should destroy use" do
    assert_difference('Use.count', -1) do
      delete :destroy, :id => uses(:one).to_param
    end

    assert_redirected_to uses_path
  end
end
