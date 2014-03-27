require 'test_helper'

class ProducedInsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produced_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produced_in" do
    assert_difference('ProducedIn.count') do
      post :create, :produced_in => { }
    end

    assert_redirected_to produced_in_path(assigns(:produced_in))
  end

  test "should show produced_in" do
    get :show, :id => produced_ins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => produced_ins(:one).to_param
    assert_response :success
  end

  test "should update produced_in" do
    put :update, :id => produced_ins(:one).to_param, :produced_in => { }
    assert_redirected_to produced_in_path(assigns(:produced_in))
  end

  test "should destroy produced_in" do
    assert_difference('ProducedIn.count', -1) do
      delete :destroy, :id => produced_ins(:one).to_param
    end

    assert_redirected_to produced_ins_path
  end
end
