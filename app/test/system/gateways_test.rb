require "application_system_test_case"

class GatewaysTest < ApplicationSystemTestCase
  setup do
    @gateway = gateways(:one)
  end

  test "visiting the index" do
    visit gateways_url
    assert_selector "h1", text: "Gateways"
  end

  test "creating a Gateway" do
    visit gateways_url
    click_on "New Gateway"

    fill_in "Address", with: @gateway.address
    fill_in "Concentrator", with: @gateway.concentrator_id
    fill_in "Interface", with: @gateway.interface
    fill_in "Name", with: @gateway.name
    click_on "Create Gateway"

    assert_text "Gateway was successfully created"
    click_on "Back"
  end

  test "updating a Gateway" do
    visit gateways_url
    click_on "Edit", match: :first

    fill_in "Address", with: @gateway.address
    fill_in "Concentrator", with: @gateway.concentrator_id
    fill_in "Interface", with: @gateway.interface
    fill_in "Name", with: @gateway.name
    click_on "Update Gateway"

    assert_text "Gateway was successfully updated"
    click_on "Back"
  end

  test "destroying a Gateway" do
    visit gateways_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gateway was successfully destroyed"
  end
end
