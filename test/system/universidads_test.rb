require "application_system_test_case"

class UniversidadsTest < ApplicationSystemTestCase
  setup do
    @universidad = universidads(:one)
  end

  test "visiting the index" do
    visit universidads_url
    assert_selector "h1", text: "Universidads"
  end

  test "creating a Universidad" do
    visit universidads_url
    click_on "New Universidad"

    fill_in "Activo", with: @universidad.activo
    fill_in "Creador", with: @universidad.creador
    fill_in "Descripcion", with: @universidad.descripcion
    fill_in "Direccion", with: @universidad.direccion
    fill_in "Facebook", with: @universidad.facebook
    fill_in "Instagram", with: @universidad.instagram
    fill_in "Modificador", with: @universidad.modificador
    fill_in "Municipio", with: @universidad.municipio
    fill_in "Nit", with: @universidad.nit
    fill_in "Nombre", with: @universidad.nombre
    fill_in "Nroestudiantes", with: @universidad.nroEstudiantes
    fill_in "Twitter", with: @universidad.twitter
    fill_in "Web", with: @universidad.web
    click_on "Create Universidad"

    assert_text "Universidad was successfully created"
    click_on "Back"
  end

  test "updating a Universidad" do
    visit universidads_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @universidad.activo
    fill_in "Creador", with: @universidad.creador
    fill_in "Descripcion", with: @universidad.descripcion
    fill_in "Direccion", with: @universidad.direccion
    fill_in "Facebook", with: @universidad.facebook
    fill_in "Instagram", with: @universidad.instagram
    fill_in "Modificador", with: @universidad.modificador
    fill_in "Municipio", with: @universidad.municipio
    fill_in "Nit", with: @universidad.nit
    fill_in "Nombre", with: @universidad.nombre
    fill_in "Nroestudiantes", with: @universidad.nroEstudiantes
    fill_in "Twitter", with: @universidad.twitter
    fill_in "Web", with: @universidad.web
    click_on "Update Universidad"

    assert_text "Universidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Universidad" do
    visit universidads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Universidad was successfully destroyed"
  end
end
