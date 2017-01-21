require 'test_helper'

class ManagecoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @managecourse = managecourses(:one)
  end

  test "should get index" do
    get managecourses_url
    assert_response :success
  end

  test "should get new" do
    get new_managecourse_url
    assert_response :success
  end

  test "should create managecourse" do
    assert_difference('Managecourse.count') do
      post managecourses_url, params: { managecourse: { coursename: @managecourse.coursename, duration: @managecourse.duration, responsibleperson: @managecourse.responsibleperson } }
    end

    assert_redirected_to managecourse_url(Managecourse.last)
  end

  test "should show managecourse" do
    get managecourse_url(@managecourse)
    assert_response :success
  end

  test "should get edit" do
    get edit_managecourse_url(@managecourse)
    assert_response :success
  end

  test "should update managecourse" do
    patch managecourse_url(@managecourse), params: { managecourse: { coursename: @managecourse.coursename, duration: @managecourse.duration, responsibleperson: @managecourse.responsibleperson } }
    assert_redirected_to managecourse_url(@managecourse)
  end

  test "should destroy managecourse" do
    assert_difference('Managecourse.count', -1) do
      delete managecourse_url(@managecourse)
    end

    assert_redirected_to managecourses_url
  end
end
