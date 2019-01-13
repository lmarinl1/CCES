require "application_system_test_case"

class MilitantesTest < ApplicationSystemTestCase
  setup do
    @militante = militantes(:one)
  end

  test "visiting the index" do
    visit militantes_url
    assert_selector "h1", text: "Militantes"
  end

  test "creating a Militante" do
    visit militantes_url
    click_on "New Militante"

    fill_in "Activo", with: @militante.activo
    fill_in "Apellido", with: @militante.apellido
    fill_in "Cedula", with: @militante.cedula
    fill_in "Cel", with: @militante.cel
    fill_in "Creador", with: @militante.creador
    fill_in "Email", with: @militante.email
    fill_in "Fechaexp", with: @militante.fechaexp
    fill_in "Modificador", with: @militante.modificador
    fill_in "Municipio", with: @militante.municipio
    fill_in "Nacimiento", with: @militante.nacimiento
    fill_in "Nombre", with: @militante.nombre
    fill_in "Ocupacion", with: @militante.ocupacion
    fill_in "Profesion", with: @militante.profesion
    fill_in "Puntov", with: @militante.puntov
    fill_in "Sexo", with: @militante.sexo
    fill_in "Tel", with: @militante.tel
    fill_in "Zona", with: @militante.zona
    click_on "Create Militante"

    assert_text "Militante was successfully created"
    click_on "Back"
  end

  test "updating a Militante" do
    visit militantes_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @militante.activo
    fill_in "Apellido", with: @militante.apellido
    fill_in "Cedula", with: @militante.cedula
    fill_in "Cel", with: @militante.cel
    fill_in "Creador", with: @militante.creador
    fill_in "Email", with: @militante.email
    fill_in "Fechaexp", with: @militante.fechaexp
    fill_in "Modificador", with: @militante.modificador
    fill_in "Municipio", with: @militante.municipio
    fill_in "Nacimiento", with: @militante.nacimiento
    fill_in "Nombre", with: @militante.nombre
    fill_in "Ocupacion", with: @militante.ocupacion
    fill_in "Profesion", with: @militante.profesion
    fill_in "Puntov", with: @militante.puntov
    fill_in "Sexo", with: @militante.sexo
    fill_in "Tel", with: @militante.tel
    fill_in "Zona", with: @militante.zona
    click_on "Update Militante"

    assert_text "Militante was successfully updated"
    click_on "Back"
  end

  test "destroying a Militante" do
    visit militantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Militante was successfully destroyed"
  end
end
