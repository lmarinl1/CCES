require 'test_helper'

class EstefansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estefan = estefans(:one)
  end

  test "should get index" do
    get estefans_url
    assert_response :success
  end

  test "should get new" do
    get new_estefan_url
    assert_response :success
  end

  test "should create estefan" do
    assert_difference('Estefan.count') do
      post estefans_url, params: { estefan: { activo: @estefan.activo, apellido: @estefan.apellido, cargo: @estefan.cargo, cedula: @estefan.cedula, cel: @estefan.cel, creador: @estefan.creador, descripcion: @estefan.descripcion, email: @estefan.email, facebook: @estefan.facebook, instagram: @estefan.instagram, modificador: @estefan.modificador, municipio: @estefan.municipio, nacimento: @estefan.nacimento, nombre: @estefan.nombre, puntov: @estefan.puntov, sexo: @estefan.sexo, twitter: @estefan.twitter, whatsapp: @estefan.whatsapp, zona: @estefan.zona } }
    end

    assert_redirected_to estefan_url(Estefan.last)
  end

  test "should show estefan" do
    get estefan_url(@estefan)
    assert_response :success
  end

  test "should get edit" do
    get edit_estefan_url(@estefan)
    assert_response :success
  end

  test "should update estefan" do
    patch estefan_url(@estefan), params: { estefan: { activo: @estefan.activo, apellido: @estefan.apellido, cargo: @estefan.cargo, cedula: @estefan.cedula, cel: @estefan.cel, creador: @estefan.creador, descripcion: @estefan.descripcion, email: @estefan.email, facebook: @estefan.facebook, instagram: @estefan.instagram, modificador: @estefan.modificador, municipio: @estefan.municipio, nacimento: @estefan.nacimento, nombre: @estefan.nombre, puntov: @estefan.puntov, sexo: @estefan.sexo, twitter: @estefan.twitter, whatsapp: @estefan.whatsapp, zona: @estefan.zona } }
    assert_redirected_to estefan_url(@estefan)
  end

  test "should destroy estefan" do
    assert_difference('Estefan.count', -1) do
      delete estefan_url(@estefan)
    end

    assert_redirected_to estefans_url
  end
end
