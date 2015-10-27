require 'test_helper'

class RecetasControllerTest < ActionController::TestCase
  test "should get altas" do
    get :altas
    assert_response :success
  end

  test "should get bajas" do
    get :bajas
    assert_response :success
  end

  test "should get actualziar" do
    get :actualziar
    assert_response :success
  end

end
