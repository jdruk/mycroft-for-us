require "application_system_test_case"

class ConcentratorsTest < ApplicationSystemTestCase
  setup do
    @concentrator = concentrators(:one)
  end

  test "visiting the index" do
    visit concentrators_url
    assert_selector "h1", text: "Concentrators"
  end

  test "creating a Concentrator" do
    visit concentrators_url
    click_on "New Concentrator"

    fill_in "Address", with: @concentrator.address
    fill_in "Hostname", with: @concentrator.hostname
    fill_in "Login", with: @concentrator.login
    fill_in "Password", with: @concentrator.password
    click_on "Create Concentrator"

    assert_text "Concentrator was successfully created"
    click_on "Back"
  end

  test "updating a Concentrator" do
    visit concentrators_url
    click_on "Edit", match: :first

    fill_in "Address", with: @concentrator.address
    fill_in "Hostname", with: @concentrator.hostname
    fill_in "Login", with: @concentrator.login
    fill_in "Password", with: @concentrator.password
    click_on "Update Concentrator"

    assert_text "Concentrator was successfully updated"
    click_on "Back"
  end

  test "destroying a Concentrator" do
    visit concentrators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Concentrator was successfully destroyed"
  end
end
