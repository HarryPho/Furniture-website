require 'test_helper'

class DoesBusinessInsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:does_business_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create does_business_in" do
    assert_difference('DoesBusinessIn.count') do
      post :create, :does_business_in => { }
    end

    assert_redirected_to does_business_in_path(assigns(:does_business_in))
  end

  test "should show does_business_in" do
    get :show, :id => does_business_ins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => does_business_ins(:one).to_param
    assert_response :success
  end

  test "should update does_business_in" do
    put :update, :id => does_business_ins(:one).to_param, :does_business_in => { }
    assert_redirected_to does_business_in_path(assigns(:does_business_in))
  end

  test "should destroy does_business_in" do
    assert_difference('DoesBusinessIn.count', -1) do
      delete :destroy, :id => does_business_ins(:one).to_param
    end

    assert_redirected_to does_business_ins_path
  end
end
