require 'test_helper'

class SocialClassesControllerTest < ActionController::TestCase
  setup do
    @social_class = social_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_class" do
    assert_difference('SocialClass.count') do
      post :create, social_class: { name: @social_class.name }
    end

    assert_redirected_to social_class_path(assigns(:social_class))
  end

  test "should show social_class" do
    get :show, id: @social_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @social_class
    assert_response :success
  end

  test "should update social_class" do
    put :update, id: @social_class, social_class: { name: @social_class.name }
    assert_redirected_to social_class_path(assigns(:social_class))
  end

  test "should destroy social_class" do
    assert_difference('SocialClass.count', -1) do
      delete :destroy, id: @social_class
    end

    assert_redirected_to social_classes_path
  end
end
