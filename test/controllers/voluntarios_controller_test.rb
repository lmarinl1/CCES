require 'test_helper'

class VoluntariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voluntario = voluntarios(:one)
  end

  test "should get index" do
    get voluntarios_url
    assert_response :success
  end

  test "should get new" do
    get new_voluntario_url
    assert_response :success
  end

  test "should create voluntario" do
    assert_difference('Voluntario.count') do
      post voluntarios_url, params: { voluntario: { activo: @voluntario.activo, apellido: @voluntario.apellido, cargo: @voluntario.cargo, carrera: @voluntario.carrera, cedula: @voluntario.cedula, cel: @voluntario.cel, creador: @voluntario.creador, descripcion: @voluntario.descripcion, direccion: @voluntario.direccion, email: @voluntario.email, empresa: @voluntario.empresa, facebook: @voluntario.facebook, instagram: @voluntario.instagram, modificador: @voluntario.modificador, municipio: @voluntario.municipio, nacimiento: @voluntario.nacimiento, nombre: @voluntario.nombre, perfil: @voluntario.perfil, puntov: @voluntario.puntov, sexo: @voluntario.sexo, twitter: @voluntario.twitter, universidad: @voluntario.universidad, votos: @voluntario.votos, whatsapp: @voluntario.whatsapp, zona: @voluntario.zona } }
    end

    assert_redirected_to voluntario_url(Voluntario.last)
  end

  test "should show voluntario" do
    get voluntario_url(@voluntario)
    assert_response :success
  end

  test "should get edit" do
    get edit_voluntario_url(@voluntario)
    assert_response :success
  end

  test "should update voluntario" do
    patch voluntario_url(@voluntario), params: { voluntario: { activo: @voluntario.activo, apellido: @voluntario.apellido, cargo: @voluntario.cargo, carrera: @voluntario.carrera, cedula: @voluntario.cedula, cel: @voluntario.cel, creador: @voluntario.creador, descripcion: @voluntario.descripcion, direccion: @voluntario.direccion, email: @voluntario.email, empresa: @voluntario.empresa, facebook: @voluntario.facebook, instagram: @voluntario.instagram, modificador: @voluntario.modificador, municipio: @voluntario.municipio, nacimiento: @voluntario.nacimiento, nombre: @voluntario.nombre, perfil: @voluntario.perfil, puntov: @voluntario.puntov, sexo: @voluntario.sexo, twitter: @voluntario.twitter, universidad: @voluntario.universidad, votos: @voluntario.votos, whatsapp: @voluntario.whatsapp, zona: @voluntario.zona } }
    assert_redirected_to voluntario_url(@voluntario)
  end

  test "should destroy voluntario" do
    assert_difference('Voluntario.count', -1) do
      delete voluntario_url(@voluntario)
    end

    assert_redirected_to voluntarios_url
  end
end
