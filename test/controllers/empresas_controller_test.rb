require 'test_helper'

class EmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empresa = empresas(:one)
  end

  test "should get index" do
    get empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_empresa_url
    assert_response :success
  end

  test "should create empresa" do
    assert_difference('Empresa.count') do
      post empresas_url, params: { empresa: { activo: @empresa.activo, creador: @empresa.creador, descripcion: @empresa.descripcion, direccion: @empresa.direccion, facebook: @empresa.facebook, instagram: @empresa.instagram, modificador: @empresa.modificador, municipio: @empresa.municipio, nit: @empresa.nit, nombre: @empresa.nombre, nroEmpleados: @empresa.nroEmpleados, twitter: @empresa.twitter, web: @empresa.web } }
    end

    assert_redirected_to empresa_url(Empresa.last)
  end

  test "should show empresa" do
    get empresa_url(@empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_empresa_url(@empresa)
    assert_response :success
  end

  test "should update empresa" do
    patch empresa_url(@empresa), params: { empresa: { activo: @empresa.activo, creador: @empresa.creador, descripcion: @empresa.descripcion, direccion: @empresa.direccion, facebook: @empresa.facebook, instagram: @empresa.instagram, modificador: @empresa.modificador, municipio: @empresa.municipio, nit: @empresa.nit, nombre: @empresa.nombre, nroEmpleados: @empresa.nroEmpleados, twitter: @empresa.twitter, web: @empresa.web } }
    assert_redirected_to empresa_url(@empresa)
  end

  test "should destroy empresa" do
    assert_difference('Empresa.count', -1) do
      delete empresa_url(@empresa)
    end

    assert_redirected_to empresas_url
  end
end
