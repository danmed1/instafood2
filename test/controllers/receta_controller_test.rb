require 'test_helper'

class RecetaControllerTest < ActionController::TestCase
  setup do
    @recetum = receta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recetum" do
    assert_difference('Recetum.count') do
      post :create, recetum: { descripcion: @recetum.descripcion, fechaCreacion: @recetum.fechaCreacion, image: @recetum.image, nombre: @recetum.nombre, porciones: @recetum.porciones, procedimiento: @recetum.procedimiento, tiempoPrep: @recetum.tiempoPrep, tipo: @recetum.tipo }
    end

    assert_redirected_to recetum_path(assigns(:recetum))
  end

  test "should show recetum" do
    get :show, id: @recetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recetum
    assert_response :success
  end

  test "should update recetum" do
    patch :update, id: @recetum, recetum: { descripcion: @recetum.descripcion, fechaCreacion: @recetum.fechaCreacion, image: @recetum.image, nombre: @recetum.nombre, porciones: @recetum.porciones, procedimiento: @recetum.procedimiento, tiempoPrep: @recetum.tiempoPrep, tipo: @recetum.tipo }
    assert_redirected_to recetum_path(assigns(:recetum))
  end

  test "should destroy recetum" do
    assert_difference('Recetum.count', -1) do
      delete :destroy, id: @recetum
    end

    assert_redirected_to receta_path
  end
end
