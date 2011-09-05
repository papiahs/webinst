require 'test_helper'

class RefsControllerTest < ActionController::TestCase
  setup do
    @ref = refs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ref" do
    assert_difference('Ref.count') do
      post :create, :ref => @ref.attributes
    end

    assert_redirected_to ref_path(assigns(:ref))
  end

  test "should show ref" do
    get :show, :id => @ref.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ref.to_param
    assert_response :success
  end

  test "should update ref" do
    put :update, :id => @ref.to_param, :ref => @ref.attributes
    assert_redirected_to ref_path(assigns(:ref))
  end

  test "should destroy ref" do
    assert_difference('Ref.count', -1) do
      delete :destroy, :id => @ref.to_param
    end

    assert_redirected_to refs_path
  end
end
