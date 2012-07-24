require 'test_helper'

class InfiniteSheltersControllerTest < ActionController::TestCase
  setup do
    @infinite_shelter = infinite_shelters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infinite_shelters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create infinite_shelter" do
    assert_difference('InfiniteShelter.count') do
      post :create, infinite_shelter: {  }
    end

    assert_redirected_to infinite_shelter_path(assigns(:infinite_shelter))
  end

  test "should show infinite_shelter" do
    get :show, id: @infinite_shelter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @infinite_shelter
    assert_response :success
  end

  test "should update infinite_shelter" do
    put :update, id: @infinite_shelter, infinite_shelter: {  }
    assert_redirected_to infinite_shelter_path(assigns(:infinite_shelter))
  end

  test "should destroy infinite_shelter" do
    assert_difference('InfiniteShelter.count', -1) do
      delete :destroy, id: @infinite_shelter
    end

    assert_redirected_to infinite_shelters_path
  end
end
