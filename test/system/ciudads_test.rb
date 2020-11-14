require "application_system_test_case"

class CiudadsTest < ApplicationSystemTestCase
  setup do
    @ciudad = ciudads(:one)
  end

  test "visiting the index" do
    visit ciudads_url
    assert_selector "h1", text: "Ciudads"
  end

  test "creating a Ciudad" do
    visit ciudads_url
    click_on "New Ciudad"

    fill_in "Habitantes", with: @ciudad.habitantes
    fill_in "Nombre", with: @ciudad.nombre
    click_on "Create Ciudad"

    assert_text "Ciudad was successfully created"
    click_on "Back"
  end

  test "updating a Ciudad" do
    visit ciudads_url
    click_on "Edit", match: :first

    fill_in "Habitantes", with: @ciudad.habitantes
    fill_in "Nombre", with: @ciudad.nombre
    click_on "Update Ciudad"

    assert_text "Ciudad was successfully updated"
    click_on "Back"
  end

  test "destroying a Ciudad" do
    visit ciudads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ciudad was successfully destroyed"
  end
end
