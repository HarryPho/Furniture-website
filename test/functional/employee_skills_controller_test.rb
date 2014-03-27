require 'test_helper'

class EmployeeSkillsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_skill" do
    assert_difference('EmployeeSkill.count') do
      post :create, :employee_skill => { }
    end

    assert_redirected_to employee_skill_path(assigns(:employee_skill))
  end

  test "should show employee_skill" do
    get :show, :id => employee_skills(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => employee_skills(:one).to_param
    assert_response :success
  end

  test "should update employee_skill" do
    put :update, :id => employee_skills(:one).to_param, :employee_skill => { }
    assert_redirected_to employee_skill_path(assigns(:employee_skill))
  end

  test "should destroy employee_skill" do
    assert_difference('EmployeeSkill.count', -1) do
      delete :destroy, :id => employee_skills(:one).to_param
    end

    assert_redirected_to employee_skills_path
  end
end
