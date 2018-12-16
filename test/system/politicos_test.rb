require "application_system_test_case"

class PoliticosTest < ApplicationSystemTestCase
  setup do
    @politico = politicos(:one)
  end

  test "visiting the index" do
    visit politicos_url
    assert_selector "h1", text: "Politicos"
  end

  test "creating a Politico" do
    visit politicos_url
    click_on "New Politico"

    fill_in "Activo", with: @politico.activo
    fill_in "Apellido", with: @politico.apellido
    fill_in "Ccel1", with: @politico.cCel1
    fill_in "Ccel2", with: @politico.cCel2
    fill_in "Cemail", with: @politico.cEmail
    fill_in "Cnombre", with: @politico.cNombre
    fill_in "Ctel", with: @politico.cTel
    fill_in "Cwhatsapp", with: @politico.cWhatsapp
    fill_in "Cedula", with: @politico.cedula
    fill_in "Celular", with: @politico.celular
    fill_in "Creador", with: @politico.creador
    fill_in "Descripcion", with: @politico.descripcion
    fill_in "Email", with: @politico.email
    fill_in "Facebook", with: @politico.facebook
    fill_in "Instagram", with: @politico.instagram
    fill_in "Modificador", with: @politico.modificador
    fill_in "Municipio", with: @politico.municipio
    fill_in "Nombre", with: @politico.nombre
    fill_in "Partido", with: @politico.partido
    fill_in "Puntov", with: @politico.puntov
    fill_in "Sexo", with: @politico.sexo
    fill_in "Telefono", with: @politico.telefono
    fill_in "Twitter", with: @politico.twitter
    fill_in "Whatsapp", with: @politico.whatsapp
    click_on "Create Politico"

    assert_text "Politico was successfully created"
    click_on "Back"
  end

  test "updating a Politico" do
    visit politicos_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @politico.activo
    fill_in "Apellido", with: @politico.apellido
    fill_in "Ccel1", with: @politico.cCel1
    fill_in "Ccel2", with: @politico.cCel2
    fill_in "Cemail", with: @politico.cEmail
    fill_in "Cnombre", with: @politico.cNombre
    fill_in "Ctel", with: @politico.cTel
    fill_in "Cwhatsapp", with: @politico.cWhatsapp
    fill_in "Cedula", with: @politico.cedula
    fill_in "Celular", with: @politico.celular
    fill_in "Creador", with: @politico.creador
    fill_in "Descripcion", with: @politico.descripcion
    fill_in "Email", with: @politico.email
    fill_in "Facebook", with: @politico.facebook
    fill_in "Instagram", with: @politico.instagram
    fill_in "Modificador", with: @politico.modificador
    fill_in "Municipio", with: @politico.municipio
    fill_in "Nombre", with: @politico.nombre
    fill_in "Partido", with: @politico.partido
    fill_in "Puntov", with: @politico.puntov
    fill_in "Sexo", with: @politico.sexo
    fill_in "Telefono", with: @politico.telefono
    fill_in "Twitter", with: @politico.twitter
    fill_in "Whatsapp", with: @politico.whatsapp
    click_on "Update Politico"

    assert_text "Politico was successfully updated"
    click_on "Back"
  end

  test "destroying a Politico" do
    visit politicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Politico was successfully destroyed"
  end
end
