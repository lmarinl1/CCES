require "application_system_test_case"

class EmpresariosTest < ApplicationSystemTestCase
  setup do
    @empresario = empresarios(:one)
  end

  test "visiting the index" do
    visit empresarios_url
    assert_selector "h1", text: "Empresarios"
  end

  test "creating a Empresario" do
    visit empresarios_url
    click_on "New Empresario"

    fill_in "Activo", with: @empresario.activo
    fill_in "Apellido", with: @empresario.apellido
    fill_in "Ccel1", with: @empresario.cCel1
    fill_in "Ccel2", with: @empresario.cCel2
    fill_in "Cemail", with: @empresario.cEmail
    fill_in "Cnombre", with: @empresario.cNombre
    fill_in "Ctel", with: @empresario.cTel
    fill_in "Cwhatsapp", with: @empresario.cWhatsapp
    fill_in "Cedula", with: @empresario.cedula
    fill_in "Celular", with: @empresario.celular
    fill_in "Creador", with: @empresario.creador
    fill_in "Descripcion", with: @empresario.descripcion
    fill_in "Email", with: @empresario.email
    fill_in "Empresa", with: @empresario.empresa
    fill_in "Facebook", with: @empresario.facebook
    fill_in "Instagram", with: @empresario.instagram
    fill_in "Modificador", with: @empresario.modificador
    fill_in "Municipio", with: @empresario.municipio
    fill_in "Nombre", with: @empresario.nombre
    fill_in "Puntov", with: @empresario.puntov
    fill_in "Sexo", with: @empresario.sexo
    fill_in "Telefono", with: @empresario.telefono
    fill_in "Twitter", with: @empresario.twitter
    fill_in "Whatsapp", with: @empresario.whatsapp
    click_on "Create Empresario"

    assert_text "Empresario was successfully created"
    click_on "Back"
  end

  test "updating a Empresario" do
    visit empresarios_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @empresario.activo
    fill_in "Apellido", with: @empresario.apellido
    fill_in "Ccel1", with: @empresario.cCel1
    fill_in "Ccel2", with: @empresario.cCel2
    fill_in "Cemail", with: @empresario.cEmail
    fill_in "Cnombre", with: @empresario.cNombre
    fill_in "Ctel", with: @empresario.cTel
    fill_in "Cwhatsapp", with: @empresario.cWhatsapp
    fill_in "Cedula", with: @empresario.cedula
    fill_in "Celular", with: @empresario.celular
    fill_in "Creador", with: @empresario.creador
    fill_in "Descripcion", with: @empresario.descripcion
    fill_in "Email", with: @empresario.email
    fill_in "Empresa", with: @empresario.empresa
    fill_in "Facebook", with: @empresario.facebook
    fill_in "Instagram", with: @empresario.instagram
    fill_in "Modificador", with: @empresario.modificador
    fill_in "Municipio", with: @empresario.municipio
    fill_in "Nombre", with: @empresario.nombre
    fill_in "Puntov", with: @empresario.puntov
    fill_in "Sexo", with: @empresario.sexo
    fill_in "Telefono", with: @empresario.telefono
    fill_in "Twitter", with: @empresario.twitter
    fill_in "Whatsapp", with: @empresario.whatsapp
    click_on "Update Empresario"

    assert_text "Empresario was successfully updated"
    click_on "Back"
  end

  test "destroying a Empresario" do
    visit empresarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empresario was successfully destroyed"
  end
end
