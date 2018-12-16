require "application_system_test_case"

class AportesTest < ApplicationSystemTestCase
  setup do
    @aporte = aportes(:one)
  end

  test "visiting the index" do
    visit aportes_url
    assert_selector "h1", text: "Aportes"
  end

  test "creating a Aporte" do
    visit aportes_url
    click_on "New Aporte"

    fill_in "Activo", with: @aporte.activo
    fill_in "Creador", with: @aporte.creador
    fill_in "Descripcion", with: @aporte.descripcion
    fill_in "Modificador", with: @aporte.modificador
    fill_in "Nombre", with: @aporte.nombre
    click_on "Create Aporte"

    assert_text "Aporte was successfully created"
    click_on "Back"
  end

  test "updating a Aporte" do
    visit aportes_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @aporte.activo
    fill_in "Creador", with: @aporte.creador
    fill_in "Descripcion", with: @aporte.descripcion
    fill_in "Modificador", with: @aporte.modificador
    fill_in "Nombre", with: @aporte.nombre
    click_on "Update Aporte"

    assert_text "Aporte was successfully updated"
    click_on "Back"
  end

  test "destroying a Aporte" do
    visit aportes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aporte was successfully destroyed"
  end
end
