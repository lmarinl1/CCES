require "application_system_test_case"

class EstefansTest < ApplicationSystemTestCase
  setup do
    @estefan = estefans(:one)
  end

  test "visiting the index" do
    visit estefans_url
    assert_selector "h1", text: "Estefans"
  end

  test "creating a Estefan" do
    visit estefans_url
    click_on "New Estefan"

    fill_in "Activo", with: @estefan.activo
    fill_in "Apellido", with: @estefan.apellido
    fill_in "Cargo", with: @estefan.cargo
    fill_in "Cedula", with: @estefan.cedula
    fill_in "Cel", with: @estefan.cel
    fill_in "Creador", with: @estefan.creador
    fill_in "Descripcion", with: @estefan.descripcion
    fill_in "Email", with: @estefan.email
    fill_in "Facebook", with: @estefan.facebook
    fill_in "Instagram", with: @estefan.instagram
    fill_in "Modificador", with: @estefan.modificador
    fill_in "Municipio", with: @estefan.municipio
    fill_in "Nacimento", with: @estefan.nacimento
    fill_in "Nombre", with: @estefan.nombre
    fill_in "Puntov", with: @estefan.puntov
    fill_in "Sexo", with: @estefan.sexo
    fill_in "Twitter", with: @estefan.twitter
    fill_in "Whatsapp", with: @estefan.whatsapp
    fill_in "Zona", with: @estefan.zona
    click_on "Create Estefan"

    assert_text "Estefan was successfully created"
    click_on "Back"
  end

  test "updating a Estefan" do
    visit estefans_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @estefan.activo
    fill_in "Apellido", with: @estefan.apellido
    fill_in "Cargo", with: @estefan.cargo
    fill_in "Cedula", with: @estefan.cedula
    fill_in "Cel", with: @estefan.cel
    fill_in "Creador", with: @estefan.creador
    fill_in "Descripcion", with: @estefan.descripcion
    fill_in "Email", with: @estefan.email
    fill_in "Facebook", with: @estefan.facebook
    fill_in "Instagram", with: @estefan.instagram
    fill_in "Modificador", with: @estefan.modificador
    fill_in "Municipio", with: @estefan.municipio
    fill_in "Nacimento", with: @estefan.nacimento
    fill_in "Nombre", with: @estefan.nombre
    fill_in "Puntov", with: @estefan.puntov
    fill_in "Sexo", with: @estefan.sexo
    fill_in "Twitter", with: @estefan.twitter
    fill_in "Whatsapp", with: @estefan.whatsapp
    fill_in "Zona", with: @estefan.zona
    click_on "Update Estefan"

    assert_text "Estefan was successfully updated"
    click_on "Back"
  end

  test "destroying a Estefan" do
    visit estefans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estefan was successfully destroyed"
  end
end
