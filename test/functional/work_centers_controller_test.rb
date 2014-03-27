require 'test_helper'

class WorkCentersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_center" do
    assert_difference('WorkCenter.count') do
      post :create, :work_center => { }
    end

    assert_redirected_to work_center_path(assigns(:work_center))
  end

  test "should show work_center" do
    get :show, :id => work_centers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => work_centers(:one).to_param
    assert_response :success
  end

  test "should update work_center" do
    put :update, :id => work_centers(:one).to_param, :work_center => { }
    assert_redirected_to work_center_path(assigns(:work_center))
  end

  test "should destroy work_center" do
    assert_difference('WorkCenter.count', -1) do
      delete :destroy, :id => work_centers(:one).to_param
    end

    assert_redirected_to work_centers_path
  end
end
