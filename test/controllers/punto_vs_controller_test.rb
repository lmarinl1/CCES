require 'test_helper'

class PuntoVsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @punto_v = punto_vs(:one)
  end

  test "should get index" do
    get punto_vs_url
    assert_response :success
  end

  test "should get new" do
    get new_punto_v_url
    assert_response :success
  end

  test "should create punto_v" do
    assert_difference('PuntoV.count') do
      post punto_vs_url, params: { punto_v: { activo: @punto_v.activo, creador: @punto_v.creador, descripcion: @punto_v.descripcion, direccion: @punto_v.direccion, hombres: @punto_v.hombres, modificador: @punto_v.modificador, mujeres: @punto_v.mujeres, nombre: @punto_v.nombre, nromesas: @punto_v.nromesas, nropersonasmesa: @punto_v.nropersonasmesa, zona: @punto_v.zona } }
    end

    assert_redirected_to punto_v_url(PuntoV.last)
  end

  test "should show punto_v" do
    get punto_v_url(@punto_v)
    assert_response :success
  end

  test "should get edit" do
    get edit_punto_v_url(@punto_v)
    assert_response :success
  end

  test "should update punto_v" do
    patch punto_v_url(@punto_v), params: { punto_v: { activo: @punto_v.activo, creador: @punto_v.creador, descripcion: @punto_v.descripcion, direccion: @punto_v.direccion, hombres: @punto_v.hombres, modificador: @punto_v.modificador, mujeres: @punto_v.mujeres, nombre: @punto_v.nombre, nromesas: @punto_v.nromesas, nropersonasmesa: @punto_v.nropersonasmesa, zona: @punto_v.zona } }
    assert_redirected_to punto_v_url(@punto_v)
  end

  test "should destroy punto_v" do
    assert_difference('PuntoV.count', -1) do
      delete punto_v_url(@punto_v)
    end

    assert_redirected_to punto_vs_url
  end
end
