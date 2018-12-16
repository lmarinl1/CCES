require 'test_helper'

class AportesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aporte = aportes(:one)
  end

  test "should get index" do
    get aportes_url
    assert_response :success
  end

  test "should get new" do
    get new_aporte_url
    assert_response :success
  end

  test "should create aporte" do
    assert_difference('Aporte.count') do
      post aportes_url, params: { aporte: { activo: @aporte.activo, creador: @aporte.creador, descripcion: @aporte.descripcion, modificador: @aporte.modificador, nombre: @aporte.nombre } }
    end

    assert_redirected_to aporte_url(Aporte.last)
  end

  test "should show aporte" do
    get aporte_url(@aporte)
    assert_response :success
  end

  test "should get edit" do
    get edit_aporte_url(@aporte)
    assert_response :success
  end

  test "should update aporte" do
    patch aporte_url(@aporte), params: { aporte: { activo: @aporte.activo, creador: @aporte.creador, descripcion: @aporte.descripcion, modificador: @aporte.modificador, nombre: @aporte.nombre } }
    assert_redirected_to aporte_url(@aporte)
  end

  test "should destroy aporte" do
    assert_difference('Aporte.count', -1) do
      delete aporte_url(@aporte)
    end

    assert_redirected_to aportes_url
  end
end
