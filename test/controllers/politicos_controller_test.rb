require 'test_helper'

class PoliticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politico = politicos(:one)
  end

  test "should get index" do
    get politicos_url
    assert_response :success
  end

  test "should get new" do
    get new_politico_url
    assert_response :success
  end

  test "should create politico" do
    assert_difference('Politico.count') do
      post politicos_url, params: { politico: { activo: @politico.activo, apellido: @politico.apellido, cCel1: @politico.cCel1, cCel2: @politico.cCel2, cEmail: @politico.cEmail, cNombre: @politico.cNombre, cTel: @politico.cTel, cWhatsapp: @politico.cWhatsapp, cedula: @politico.cedula, celular: @politico.celular, creador: @politico.creador, descripcion: @politico.descripcion, email: @politico.email, facebook: @politico.facebook, instagram: @politico.instagram, modificador: @politico.modificador, municipio: @politico.municipio, nombre: @politico.nombre, partido: @politico.partido, puntov: @politico.puntov, sexo: @politico.sexo, telefono: @politico.telefono, twitter: @politico.twitter, whatsapp: @politico.whatsapp } }
    end

    assert_redirected_to politico_url(Politico.last)
  end

  test "should show politico" do
    get politico_url(@politico)
    assert_response :success
  end

  test "should get edit" do
    get edit_politico_url(@politico)
    assert_response :success
  end

  test "should update politico" do
    patch politico_url(@politico), params: { politico: { activo: @politico.activo, apellido: @politico.apellido, cCel1: @politico.cCel1, cCel2: @politico.cCel2, cEmail: @politico.cEmail, cNombre: @politico.cNombre, cTel: @politico.cTel, cWhatsapp: @politico.cWhatsapp, cedula: @politico.cedula, celular: @politico.celular, creador: @politico.creador, descripcion: @politico.descripcion, email: @politico.email, facebook: @politico.facebook, instagram: @politico.instagram, modificador: @politico.modificador, municipio: @politico.municipio, nombre: @politico.nombre, partido: @politico.partido, puntov: @politico.puntov, sexo: @politico.sexo, telefono: @politico.telefono, twitter: @politico.twitter, whatsapp: @politico.whatsapp } }
    assert_redirected_to politico_url(@politico)
  end

  test "should destroy politico" do
    assert_difference('Politico.count', -1) do
      delete politico_url(@politico)
    end

    assert_redirected_to politicos_url
  end
end
