require 'test_helper'

class InicioTempControllerTest < ActionController::TestCase
  test "should get desayuno" do
    get :desayuno
    assert_response :success
  end

  test "should get comida" do
    get :comida
    assert_response :success
  end

  test "should get cena" do
    get :cena
    assert_response :success
  end

  test "should get snack" do
    get :snack
    assert_response :success
  end

end
