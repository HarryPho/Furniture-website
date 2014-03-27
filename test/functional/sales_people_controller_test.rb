require 'test_helper'

class SalesPeopleControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_person" do
    assert_difference('SalesPerson.count') do
      post :create, :sales_person => { }
    end

    assert_redirected_to sales_person_path(assigns(:sales_person))
  end

  test "should show sales_person" do
    get :show, :id => sales_people(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sales_people(:one).to_param
    assert_response :success
  end

  test "should update sales_person" do
    put :update, :id => sales_people(:one).to_param, :sales_person => { }
    assert_redirected_to sales_person_path(assigns(:sales_person))
  end

  test "should destroy sales_person" do
    assert_difference('SalesPerson.count', -1) do
      delete :destroy, :id => sales_people(:one).to_param
    end

    assert_redirected_to sales_people_path
  end
end
