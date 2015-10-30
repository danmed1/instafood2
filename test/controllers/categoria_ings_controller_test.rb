require 'test_helper'

class CategoriaIngsControllerTest < ActionController::TestCase
  setup do
    @categoria_ing = categoria_ings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_ings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_ing" do
    assert_difference('CategoriaIng.count') do
      post :create, categoria_ing: { nombre: @categoria_ing.nombre }
    end

    assert_redirected_to categoria_ing_path(assigns(:categoria_ing))
  end

  test "should show categoria_ing" do
    get :show, id: @categoria_ing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoria_ing
    assert_response :success
  end

  test "should update categoria_ing" do
    patch :update, id: @categoria_ing, categoria_ing: { nombre: @categoria_ing.nombre }
    assert_redirected_to categoria_ing_path(assigns(:categoria_ing))
  end

  test "should destroy categoria_ing" do
    assert_difference('CategoriaIng.count', -1) do
      delete :destroy, id: @categoria_ing
    end

    assert_redirected_to categoria_ings_path
  end
end
