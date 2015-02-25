require 'test_helper'

class ShezhisControllerTest < ActionController::TestCase
  setup do
    @shezhi = shezhis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shezhis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shezhi" do
    assert_difference('Shezhi.count') do
      post :create, shezhi: { lei: @shezhi.lei, way: @shezhi.way }
    end

    assert_redirected_to shezhi_path(assigns(:shezhi))
  end

  test "should show shezhi" do
    get :show, id: @shezhi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shezhi
    assert_response :success
  end

  test "should update shezhi" do
    put :update, id: @shezhi, shezhi: { lei: @shezhi.lei, way: @shezhi.way }
    assert_redirected_to shezhi_path(assigns(:shezhi))
  end

  test "should destroy shezhi" do
    assert_difference('Shezhi.count', -1) do
      delete :destroy, id: @shezhi
    end

    assert_redirected_to shezhis_path
  end
end
