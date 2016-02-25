require 'test_helper'

class ResoursesControllerTest < ActionController::TestCase
  setup do
    @resourse = resourses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resourses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resourse" do
    assert_difference('Resourse.count') do
      post :create, resourse: { email: @resourse.email, name: @resourse.name, type: @resourse.type, website: @resourse.website }
    end

    assert_redirected_to resourse_path(assigns(:resourse))
  end

  test "should show resourse" do
    get :show, id: @resourse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resourse
    assert_response :success
  end

  test "should update resourse" do
    patch :update, id: @resourse, resourse: { email: @resourse.email, name: @resourse.name, type: @resourse.type, website: @resourse.website }
    assert_redirected_to resourse_path(assigns(:resourse))
  end

  test "should destroy resourse" do
    assert_difference('Resourse.count', -1) do
      delete :destroy, id: @resourse
    end

    assert_redirected_to resourses_path
  end
end
