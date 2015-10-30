require 'test_helper'

class CategoriaRecsControllerTest < ActionController::TestCase
  setup do
    @categoria_rec = categoria_recs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_recs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_rec" do
    assert_difference('CategoriaRec.count') do
      post :create, categoria_rec: { nombre: @categoria_rec.nombre }
    end

    assert_redirected_to categoria_rec_path(assigns(:categoria_rec))
  end

  test "should show categoria_rec" do
    get :show, id: @categoria_rec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoria_rec
    assert_response :success
  end

  test "should update categoria_rec" do
    patch :update, id: @categoria_rec, categoria_rec: { nombre: @categoria_rec.nombre }
    assert_redirected_to categoria_rec_path(assigns(:categoria_rec))
  end

  test "should destroy categoria_rec" do
    assert_difference('CategoriaRec.count', -1) do
      delete :destroy, id: @categoria_rec
    end

    assert_redirected_to categoria_recs_path
  end
end
