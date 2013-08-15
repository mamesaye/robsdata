require 'test_helper'

class EtnicitiesControllerTest < ActionController::TestCase
  setup do
    @etnicity = etnicities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etnicities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etnicity" do
    assert_difference('Etnicity.count') do
      post :create, etnicity: { name: @etnicity.name }
    end

    assert_redirected_to etnicity_path(assigns(:etnicity))
  end

  test "should show etnicity" do
    get :show, id: @etnicity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @etnicity
    assert_response :success
  end

  test "should update etnicity" do
    put :update, id: @etnicity, etnicity: { name: @etnicity.name }
    assert_redirected_to etnicity_path(assigns(:etnicity))
  end

  test "should destroy etnicity" do
    assert_difference('Etnicity.count', -1) do
      delete :destroy, id: @etnicity
    end

    assert_redirected_to etnicities_path
  end
end
