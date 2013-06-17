require 'test_helper'

class JacketsControllerTest < ActionController::TestCase
  setup do
    @jacket = jackets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jackets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jacket" do
    assert_difference('Jacket.count') do
      post :create, jacket: {  }
    end

    assert_redirected_to jacket_path(assigns(:jacket))
  end

  test "should show jacket" do
    get :show, id: @jacket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jacket
    assert_response :success
  end

  test "should update jacket" do
    put :update, id: @jacket, jacket: {  }
    assert_redirected_to jacket_path(assigns(:jacket))
  end

  test "should destroy jacket" do
    assert_difference('Jacket.count', -1) do
      delete :destroy, id: @jacket
    end

    assert_redirected_to jackets_path
  end
end
