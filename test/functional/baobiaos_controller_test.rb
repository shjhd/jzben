require 'test_helper'

class BaobiaosControllerTest < ActionController::TestCase
  setup do
    @baobiao = baobiaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baobiaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baobiao" do
    assert_difference('Baobiao.count') do
      post :create, baobiao: {  }
    end

    assert_redirected_to baobiao_path(assigns(:baobiao))
  end

  test "should show baobiao" do
    get :show, id: @baobiao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baobiao
    assert_response :success
  end

  test "should update baobiao" do
    put :update, id: @baobiao, baobiao: {  }
    assert_redirected_to baobiao_path(assigns(:baobiao))
  end

  test "should destroy baobiao" do
    assert_difference('Baobiao.count', -1) do
      delete :destroy, id: @baobiao
    end

    assert_redirected_to baobiaos_path
  end
end
