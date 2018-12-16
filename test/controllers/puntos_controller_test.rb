require 'test_helper'

class PuntosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @punto = puntos(:one)
  end

  test "should get index" do
    get puntos_url
    assert_response :success
  end

  test "should get new" do
    get new_punto_url
    assert_response :success
  end

  test "should create punto" do
    assert_difference('Punto.count') do
      post puntos_url, params: { punto: { activo: @punto.activo, creador: @punto.creador, descripcion: @punto.descripcion, modificador: @punto.modificador, punteado: @punto.punteado, puntos: @punto.puntos, tipo: @punto.tipo } }
    end

    assert_redirected_to punto_url(Punto.last)
  end

  test "should show punto" do
    get punto_url(@punto)
    assert_response :success
  end

  test "should get edit" do
    get edit_punto_url(@punto)
    assert_response :success
  end

  test "should update punto" do
    patch punto_url(@punto), params: { punto: { activo: @punto.activo, creador: @punto.creador, descripcion: @punto.descripcion, modificador: @punto.modificador, punteado: @punto.punteado, puntos: @punto.puntos, tipo: @punto.tipo } }
    assert_redirected_to punto_url(@punto)
  end

  test "should destroy punto" do
    assert_difference('Punto.count', -1) do
      delete punto_url(@punto)
    end

    assert_redirected_to puntos_url
  end
end
