require 'test_helper'

class FlowersControllerTest < ActionController::TestCase
  setup do
    @flower = flowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success

    assert_not_nil assigns(:flowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flower" do
    assert_difference('Flower.count') do
      post :create, flower: @flower.attributes
    end

    assert_redirected_to flowers_path
  end

  test "should show flower" do
    get :show, id: @flower.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flower.to_param
    assert_response :success
  end

  test "should update flower" do
    put :update, id: @flower.to_param, flower: @flower.attributes
    assert_redirected_to flowers_path
  end

  test "should destroy flower" do
    assert_difference('Flower.count', -1) do
      delete :destroy, id: @flower.to_param
    end

    assert_redirected_to flowers_path
  end
end
