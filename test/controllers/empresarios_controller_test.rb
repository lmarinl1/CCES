require 'test_helper'

class EmpresariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empresario = empresarios(:one)
  end

  test "should get index" do
    get empresarios_url
    assert_response :success
  end

  test "should get new" do
    get new_empresario_url
    assert_response :success
  end

  test "should create empresario" do
    assert_difference('Empresario.count') do
      post empresarios_url, params: { empresario: { activo: @empresario.activo, apellido: @empresario.apellido, cCel1: @empresario.cCel1, cCel2: @empresario.cCel2, cEmail: @empresario.cEmail, cNombre: @empresario.cNombre, cTel: @empresario.cTel, cWhatsapp: @empresario.cWhatsapp, cedula: @empresario.cedula, celular: @empresario.celular, creador: @empresario.creador, descripcion: @empresario.descripcion, email: @empresario.email, empresa: @empresario.empresa, facebook: @empresario.facebook, instagram: @empresario.instagram, modificador: @empresario.modificador, municipio: @empresario.municipio, nombre: @empresario.nombre, puntov: @empresario.puntov, sexo: @empresario.sexo, telefono: @empresario.telefono, twitter: @empresario.twitter, whatsapp: @empresario.whatsapp } }
    end

    assert_redirected_to empresario_url(Empresario.last)
  end

  test "should show empresario" do
    get empresario_url(@empresario)
    assert_response :success
  end

  test "should get edit" do
    get edit_empresario_url(@empresario)
    assert_response :success
  end

  test "should update empresario" do
    patch empresario_url(@empresario), params: { empresario: { activo: @empresario.activo, apellido: @empresario.apellido, cCel1: @empresario.cCel1, cCel2: @empresario.cCel2, cEmail: @empresario.cEmail, cNombre: @empresario.cNombre, cTel: @empresario.cTel, cWhatsapp: @empresario.cWhatsapp, cedula: @empresario.cedula, celular: @empresario.celular, creador: @empresario.creador, descripcion: @empresario.descripcion, email: @empresario.email, empresa: @empresario.empresa, facebook: @empresario.facebook, instagram: @empresario.instagram, modificador: @empresario.modificador, municipio: @empresario.municipio, nombre: @empresario.nombre, puntov: @empresario.puntov, sexo: @empresario.sexo, telefono: @empresario.telefono, twitter: @empresario.twitter, whatsapp: @empresario.whatsapp } }
    assert_redirected_to empresario_url(@empresario)
  end

  test "should destroy empresario" do
    assert_difference('Empresario.count', -1) do
      delete empresario_url(@empresario)
    end

    assert_redirected_to empresarios_url
  end
end
