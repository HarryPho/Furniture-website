require 'test_helper'

class WorksInsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:works_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create works_in" do
    assert_difference('WorksIn.count') do
      post :create, :works_in => { }
    end

    assert_redirected_to works_in_path(assigns(:works_in))
  end

  test "should show works_in" do
    get :show, :id => works_ins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => works_ins(:one).to_param
    assert_response :success
  end

  test "should update works_in" do
    put :update, :id => works_ins(:one).to_param, :works_in => { }
    assert_redirected_to works_in_path(assigns(:works_in))
  end

  test "should destroy works_in" do
    assert_difference('WorksIn.count', -1) do
      delete :destroy, :id => works_ins(:one).to_param
    end

    assert_redirected_to works_ins_path
  end
end
