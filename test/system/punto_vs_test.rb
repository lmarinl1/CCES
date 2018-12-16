require "application_system_test_case"

class PuntoVsTest < ApplicationSystemTestCase
  setup do
    @punto_v = punto_vs(:one)
  end

  test "visiting the index" do
    visit punto_vs_url
    assert_selector "h1", text: "Punto Vs"
  end

  test "creating a Punto v" do
    visit punto_vs_url
    click_on "New Punto V"

    fill_in "Activo", with: @punto_v.activo
    fill_in "Creador", with: @punto_v.creador
    fill_in "Descripcion", with: @punto_v.descripcion
    fill_in "Direccion", with: @punto_v.direccion
    fill_in "Hombres", with: @punto_v.hombres
    fill_in "Modificador", with: @punto_v.modificador
    fill_in "Mujeres", with: @punto_v.mujeres
    fill_in "Nombre", with: @punto_v.nombre
    fill_in "Nromesas", with: @punto_v.nromesas
    fill_in "Nropersonasmesa", with: @punto_v.nropersonasmesa
    fill_in "Zona", with: @punto_v.zona
    click_on "Create Punto v"

    assert_text "Punto v was successfully created"
    click_on "Back"
  end

  test "updating a Punto v" do
    visit punto_vs_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @punto_v.activo
    fill_in "Creador", with: @punto_v.creador
    fill_in "Descripcion", with: @punto_v.descripcion
    fill_in "Direccion", with: @punto_v.direccion
    fill_in "Hombres", with: @punto_v.hombres
    fill_in "Modificador", with: @punto_v.modificador
    fill_in "Mujeres", with: @punto_v.mujeres
    fill_in "Nombre", with: @punto_v.nombre
    fill_in "Nromesas", with: @punto_v.nromesas
    fill_in "Nropersonasmesa", with: @punto_v.nropersonasmesa
    fill_in "Zona", with: @punto_v.zona
    click_on "Update Punto v"

    assert_text "Punto v was successfully updated"
    click_on "Back"
  end

  test "destroying a Punto v" do
    visit punto_vs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Punto v was successfully destroyed"
  end
end
