require 'test_helper'

class TvTypesControllerTest < ActionController::TestCase
  setup do
    @tv_type = tv_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tv_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv_type" do
    assert_difference('TvType.count') do
      post :create, tv_type: { name: @tv_type.name }
    end

    assert_redirected_to tv_type_path(assigns(:tv_type))
  end

  test "should show tv_type" do
    get :show, id: @tv_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tv_type
    assert_response :success
  end

  test "should update tv_type" do
    put :update, id: @tv_type, tv_type: { name: @tv_type.name }
    assert_redirected_to tv_type_path(assigns(:tv_type))
  end

  test "should destroy tv_type" do
    assert_difference('TvType.count', -1) do
      delete :destroy, id: @tv_type
    end

    assert_redirected_to tv_types_path
  end
end
