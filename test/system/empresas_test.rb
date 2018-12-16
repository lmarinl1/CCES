require "application_system_test_case"

class EmpresasTest < ApplicationSystemTestCase
  setup do
    @empresa = empresas(:one)
  end

  test "visiting the index" do
    visit empresas_url
    assert_selector "h1", text: "Empresas"
  end

  test "creating a Empresa" do
    visit empresas_url
    click_on "New Empresa"

    fill_in "Activo", with: @empresa.activo
    fill_in "Creador", with: @empresa.creador
    fill_in "Descripcion", with: @empresa.descripcion
    fill_in "Direccion", with: @empresa.direccion
    fill_in "Facebook", with: @empresa.facebook
    fill_in "Instagram", with: @empresa.instagram
    fill_in "Modificador", with: @empresa.modificador
    fill_in "Municipio", with: @empresa.municipio
    fill_in "Nit", with: @empresa.nit
    fill_in "Nombre", with: @empresa.nombre
    fill_in "Nroempleados", with: @empresa.nroEmpleados
    fill_in "Twitter", with: @empresa.twitter
    fill_in "Web", with: @empresa.web
    click_on "Create Empresa"

    assert_text "Empresa was successfully created"
    click_on "Back"
  end

  test "updating a Empresa" do
    visit empresas_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @empresa.activo
    fill_in "Creador", with: @empresa.creador
    fill_in "Descripcion", with: @empresa.descripcion
    fill_in "Direccion", with: @empresa.direccion
    fill_in "Facebook", with: @empresa.facebook
    fill_in "Instagram", with: @empresa.instagram
    fill_in "Modificador", with: @empresa.modificador
    fill_in "Municipio", with: @empresa.municipio
    fill_in "Nit", with: @empresa.nit
    fill_in "Nombre", with: @empresa.nombre
    fill_in "Nroempleados", with: @empresa.nroEmpleados
    fill_in "Twitter", with: @empresa.twitter
    fill_in "Web", with: @empresa.web
    click_on "Update Empresa"

    assert_text "Empresa was successfully updated"
    click_on "Back"
  end

  test "destroying a Empresa" do
    visit empresas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empresa was successfully destroyed"
  end
end
