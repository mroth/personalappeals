require 'test_helper'

class ContendersControllerTest < ActionController::TestCase
  setup do
    @contender = contenders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contenders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contender" do
    assert_difference('Contender.count') do
      post :create, contender: @contender.attributes
    end

    assert_redirected_to contender_path(assigns(:contender))
  end

  test "should show contender" do
    get :show, id: @contender.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contender.to_param
    assert_response :success
  end

  test "should update contender" do
    put :update, id: @contender.to_param, contender: @contender.attributes
    assert_redirected_to contender_path(assigns(:contender))
  end

  test "should destroy contender" do
    assert_difference('Contender.count', -1) do
      delete :destroy, id: @contender.to_param
    end

    assert_redirected_to contenders_path
  end
end
