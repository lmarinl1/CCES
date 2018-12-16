require "application_system_test_case"

class VoluntariosTest < ApplicationSystemTestCase
  setup do
    @voluntario = voluntarios(:one)
  end

  test "visiting the index" do
    visit voluntarios_url
    assert_selector "h1", text: "Voluntarios"
  end

  test "creating a Voluntario" do
    visit voluntarios_url
    click_on "New Voluntario"

    fill_in "Activo", with: @voluntario.activo
    fill_in "Apellido", with: @voluntario.apellido
    fill_in "Cargo", with: @voluntario.cargo
    fill_in "Carrera", with: @voluntario.carrera
    fill_in "Cedula", with: @voluntario.cedula
    fill_in "Cel", with: @voluntario.cel
    fill_in "Creador", with: @voluntario.creador
    fill_in "Descripcion", with: @voluntario.descripcion
    fill_in "Direccion", with: @voluntario.direccion
    fill_in "Email", with: @voluntario.email
    fill_in "Empresa", with: @voluntario.empresa
    fill_in "Facebook", with: @voluntario.facebook
    fill_in "Instagram", with: @voluntario.instagram
    fill_in "Modificador", with: @voluntario.modificador
    fill_in "Municipio", with: @voluntario.municipio
    fill_in "Nacimiento", with: @voluntario.nacimiento
    fill_in "Nombre", with: @voluntario.nombre
    fill_in "Perfil", with: @voluntario.perfil
    fill_in "Puntov", with: @voluntario.puntov
    fill_in "Sexo", with: @voluntario.sexo
    fill_in "Twitter", with: @voluntario.twitter
    fill_in "Universidad", with: @voluntario.universidad
    fill_in "Votos", with: @voluntario.votos
    fill_in "Whatsapp", with: @voluntario.whatsapp
    fill_in "Zona", with: @voluntario.zona
    click_on "Create Voluntario"

    assert_text "Voluntario was successfully created"
    click_on "Back"
  end

  test "updating a Voluntario" do
    visit voluntarios_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @voluntario.activo
    fill_in "Apellido", with: @voluntario.apellido
    fill_in "Cargo", with: @voluntario.cargo
    fill_in "Carrera", with: @voluntario.carrera
    fill_in "Cedula", with: @voluntario.cedula
    fill_in "Cel", with: @voluntario.cel
    fill_in "Creador", with: @voluntario.creador
    fill_in "Descripcion", with: @voluntario.descripcion
    fill_in "Direccion", with: @voluntario.direccion
    fill_in "Email", with: @voluntario.email
    fill_in "Empresa", with: @voluntario.empresa
    fill_in "Facebook", with: @voluntario.facebook
    fill_in "Instagram", with: @voluntario.instagram
    fill_in "Modificador", with: @voluntario.modificador
    fill_in "Municipio", with: @voluntario.municipio
    fill_in "Nacimiento", with: @voluntario.nacimiento
    fill_in "Nombre", with: @voluntario.nombre
    fill_in "Perfil", with: @voluntario.perfil
    fill_in "Puntov", with: @voluntario.puntov
    fill_in "Sexo", with: @voluntario.sexo
    fill_in "Twitter", with: @voluntario.twitter
    fill_in "Universidad", with: @voluntario.universidad
    fill_in "Votos", with: @voluntario.votos
    fill_in "Whatsapp", with: @voluntario.whatsapp
    fill_in "Zona", with: @voluntario.zona
    click_on "Update Voluntario"

    assert_text "Voluntario was successfully updated"
    click_on "Back"
  end

  test "destroying a Voluntario" do
    visit voluntarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voluntario was successfully destroyed"
  end
end
