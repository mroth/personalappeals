require 'test_helper'

class BattlesControllerTest < ActionController::TestCase
  setup do
    @battle = battles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:battles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create battle" do
    assert_difference('Battle.count') do
      post :create, battle: @battle.attributes
    end

    assert_redirected_to battle_path(assigns(:battle))
  end

  test "should show battle" do
    get :show, id: @battle.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @battle.to_param
    assert_response :success
  end

  test "should update battle" do
    put :update, id: @battle.to_param, battle: @battle.attributes
    assert_redirected_to battle_path(assigns(:battle))
  end

  test "should destroy battle" do
    assert_difference('Battle.count', -1) do
      delete :destroy, id: @battle.to_param
    end

    assert_redirected_to battles_path
  end
end
