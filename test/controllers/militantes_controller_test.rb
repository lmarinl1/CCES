require 'test_helper'

class MilitantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @militante = militantes(:one)
  end

  test "should get index" do
    get militantes_url
    assert_response :success
  end

  test "should get new" do
    get new_militante_url
    assert_response :success
  end

  test "should create militante" do
    assert_difference('Militante.count') do
      post militantes_url, params: { militante: { activo: @militante.activo, apellido: @militante.apellido, cedula: @militante.cedula, cel: @militante.cel, creador: @militante.creador, email: @militante.email, fechaexp: @militante.fechaexp, modificador: @militante.modificador, municipio: @militante.municipio, nacimiento: @militante.nacimiento, nombre: @militante.nombre, ocupacion: @militante.ocupacion, profesion: @militante.profesion, puntov: @militante.puntov, sexo: @militante.sexo, tel: @militante.tel, zona: @militante.zona } }
    end

    assert_redirected_to militante_url(Militante.last)
  end

  test "should show militante" do
    get militante_url(@militante)
    assert_response :success
  end

  test "should get edit" do
    get edit_militante_url(@militante)
    assert_response :success
  end

  test "should update militante" do
    patch militante_url(@militante), params: { militante: { activo: @militante.activo, apellido: @militante.apellido, cedula: @militante.cedula, cel: @militante.cel, creador: @militante.creador, email: @militante.email, fechaexp: @militante.fechaexp, modificador: @militante.modificador, municipio: @militante.municipio, nacimiento: @militante.nacimiento, nombre: @militante.nombre, ocupacion: @militante.ocupacion, profesion: @militante.profesion, puntov: @militante.puntov, sexo: @militante.sexo, tel: @militante.tel, zona: @militante.zona } }
    assert_redirected_to militante_url(@militante)
  end

  test "should destroy militante" do
    assert_difference('Militante.count', -1) do
      delete militante_url(@militante)
    end

    assert_redirected_to militantes_url
  end
end
